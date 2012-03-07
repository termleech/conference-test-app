<?php
require_once __DIR__.'/silex.phar';

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;

$app = new Silex\Application();

$app['debug'] = true;

$app->register(new Silex\Provider\DoctrineServiceProvider(), array(
    'db.options'    => array(
        'driver'    => 'pdo_sqlite',
        'path'      => __DIR__.'/conference.db',
    ),
    'db.dbal.class_path'   => __DIR__.'/vendor/doctrine-dbal/lib',
    'db.common.class_path' => __DIR__.'/vendor/doctrine-common/lib',
));

$app->get('/news/all', function() use ($app) {
    $sql = "SELECT created_date, content FROM news ORDER BY created_date DESC";
    
    $news = $app['db']->fetchAll($sql);
    
    return new Response(
        json_encode($news),
        200,
        array('Content-Type' => 'application/json')
    );
});

$app->get('/vendors/all', function() use ($app) {
    $sql = "SELECT guid as id, name, tag_line, about, booth_number, category, UPPER(SUBSTR(name, 1, 1)) AS name_alpha, url FROM vendors ORDER BY name DESC";
    
    $vendors = $app['db']->fetchAll($sql);
    
    return new Response(
        json_encode($vendors),
        200,
        array('Content-Type' => 'application/json')
    );
});

$app->get('/vendors/search', function(Request $request) use ($app) {
    $ids = $request->get('id');
    $vendors = array();
    
    
    if ($ids)
    {
        $idArray = json_decode($ids);
        
        $sql = 'SELECT guid as id, name, tag_line, about, booth_number, category, UPPER(SUBSTR(name, 1, 1)) AS name_alpha, url
                    FROM vendors
                    WHERE id IN ("' . implode('","', $idArray) . '")' .
                    'ORDER BY name DESC';
    
        $vendors = $app['db']->fetchAll($sql);
    }
    
    return new Response(
        json_encode($vendors),
        200,
        array('Content-Type' => 'application/json')
    );
});

$app->run();
?>
