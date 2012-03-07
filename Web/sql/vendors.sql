CREATE TABLE vendors (
    guid text primary key,
    name text,
    tag_line text,
    about blob,
    url text,
    booth_number text,
    category text
);

INSERT INTO vendors (guid, name, tag_line, about, url, booth_number, category)
    VALUES ("adl34df", "Telerik", "Code Faster and Better", 
            "Telerik’s mission is to make software development easier and more enjoyable. Our tools for agile project management, 
            collaboration, development and testing allow companies of all sizes to create richer, more stable and aesthetic software 
            faster than ever before. Trusted by over 100,000 customers worldwide for our devotion to quality and customer care, 
            Telerik helps technical and business professionals maximize their productivity and 'deliver more than expected' every day.",
            "http://www.telerik.com", "A230", ".NET Tools");


INSERT INTO vendors (guid, name, tag_line, about, url, booth_number, category)
    VALUES ("asdlk34", "DevExpress", "Let's see what develops",
            "Research and Development is the heart of our business. Our number one priority is to deliver feature rich and 
            flexible products that give you options...tools that do not box you into a corner and tie your hands behind your back.
            
            Technical Support that exceeds your expectations. We know that no matter how good a product might be, it still requires a 
            dedicated team of individuals fully committed to supporting it. From the most rudimentary inquiries to complex problems, 
            our support team is on-call to help you achieve your objectives.",
            "http://www.devexpress.com", "A450", ".NET Tools");


INSERT INTO vendors (guid, name, tag_line, about, url, booth_number, category)
    VALUES ("kdf34df", "Kendo UI", "Setting the New Standard for HTML5 UI",
            "Kendo UI framework is developed by Telerik – a leading provider of development and testing tools for web, desktop and 
            mobile applications. We are trusted by over 100,000 customers worldwide for our innovation and industry-best technical 
            support.
            
            UI development is our bread and butter. UX is our inspiration. That's why we created Kendo UI – an end-to-end solution 
            for modern client-side development. By choosing Kendo you get consistent quality, dedicated support and an aggressive 
            release schedule.
            
            Have fun with HTML5 and JavaScript! We will help you deliver more than expected.",
            "http://www.kendoui.com", "B230", "Web Toolkits");


INSERT INTO vendors (guid, name, tag_line, about, url, booth_number, category)
    VALUES ("345lf92", "jQuery", "A New Kind of JavaScript Library",
            "jQuery is a fast and concise JavaScript Library that simplifies HTML document traversing, event handling, animating, 
             and Ajax interactions for rapid web development. jQuery is designed to change the way that you write JavaScript.",
            "http://www.jquery.com", "B236", "Web Toolkits");
