<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1"/>
        <title id="title">Breeze Internal Test Suite</title>
       
        <link rel="stylesheet" href="Scripts/ThirdParty/qunit-1.11.0.css" type="text/css" media="screen"/>
        <script type="text/javascript" src="Scripts/ThirdParty/modernizr-2.0.6-development-only.js" ></script>
        
    </head>

    <body>
        <div id="qunit"></div>
        <div id="qunit-fixture"></div>
        <div id="test-dev"></div>
    </body>
    
    <!-- load 3rd party libs -->
    <script src="Scripts/ThirdParty/qunit-1.11.0.js"></script> 
    <script src="Scripts/ThirdParty/q.min.js"></script>
    <script src="Scripts/ThirdParty/knockout-2.1.0.debug.js"></script>
    <script src="Scripts/ThirdParty/underscore.js"></script>
    <script src="Scripts/ThirdParty/backbone.js"></script>
    <script src="Scripts/ThirdParty/jquery-1.6.2.js"></script>
    <script src="Scripts/ThirdParty/datajs-1.1.1.js"></script>
 
    <!-- Test helper scripts  --> 
    <!-- These two must come first -->    
    <script src="/Scripts/IBlade/breeze.debug.js"></script>
    <script src="/Scripts/Tests/testFns.js"></script>  
    
    <script>
        // -- Initialize Test vars  
        breezeTestFns.setDataService("OData");
    </script>
       
    <script src="/Scripts/Tests/attachTests.js"></script> 
    <script src="/Scripts/Tests/classRewriteTests.js"></script> 
    <script src="/Scripts/Tests/complexTypeTests.js"></script> 
    <script src="/Scripts/Tests/entityManagerTests.js"></script> 
    <script src="/Scripts/Tests/entityTests.js"></script> 
    <script src="/Scripts/Tests/inheritBillingTests.js"></script> 
    <script src="/Scripts/Tests/inheritProduceTests.js"></script> 
    <script src="/Scripts/Tests/koSpecificTests.js"></script> 
    <script src="/Scripts/Tests/metadataTests.js"></script> 
    <script src="/Scripts/Tests/miscTests.js"></script> 
    <script src="/Scripts/Tests/paramTests.js"></script> 
    <script src="/Scripts/Tests/queryTests.js"></script> 
    <script src="/Scripts/Tests/queryCtorTests.js"></script> 
    <script src="/Scripts/Tests/queryDatatypeTests.js"></script> 
    <script src="/Scripts/Tests/queryLocalTests.js"></script> 
    <script src="/Scripts/Tests/queryNamedTests.js"></script> 
    <script src="/Scripts/Tests/queryNonEFTests.js"></script> 
    <script src="/Scripts/Tests/queryRawOdataTests.js"></script> 
    <script src="/Scripts/Tests/querySelectTests.js"></script> 
    <script src="/Scripts/Tests/saveTests.js"></script> 
    <script src="/Scripts/Tests/validateTests.js"></script> 
    <script src="/Scripts/Tests/validateEntityTests.js"></script> 
      
    <!-- Tests are loaded; let's go! -->
    <script>

        document.getElementById("title").innerHTML += " -> " + breezeTestFns.title;
        
        if (!QUnit.urlParams.sequential) {
            if (QUnit.urlParams.canStart) {
                QUnit.start(); //Tests loaded, run tests
            }
        } else {
            // Steve. - I wasn't sure how to put this back once I removed "require" dependency.
            //function loadNext() {
            //    var module = modules.shift();
            //    if (module) {
            //        require.config({ baseUrl: "Scripts/Tests" });
            //        require([module], loadNext);
            //    } else {
            //        QUnit.start();
            //    }
            //}
            //loadNext();
        }
       

    </script>
</html>
