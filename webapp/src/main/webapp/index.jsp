<h1>***Welcome To Personal Form Page***</h1>
<!DOCTYPE html> 
<html> 
    <head> 
        <title> 
            Personal Details 
        </title> 
        <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script> 
        <script> 
            var app = angular.module('formApp', []); 
                app.controller('formCtrl', function ($scope) { 
                    $scope.sendForm = function () { 
                        $scope.msg='Form Submited Successfully'; 
                    }; 
                $scope.getClass = function (color) { 
                    return color.toString(); 
                };
            }); 
        </script> 
        <style> 
            .valid.false { 
                background: red; 
            } 
            .valid.true { 
                background: green; 
            } 
            .error { 
                color: red; 
            } 
        </style> 
    </head> 
    <body ng-app="formApp" ng-controller="formCtrl"> 
        <h3>Personal Details</h3> 
        <form name="personForm" ng-submit="sendForm()"> 
            <label for="name">Name:</label> 
            <input id="name" name="name" type="text" ng-model="person.name" required /> 
            <span class="error" ng-show="personForm.name.$error.required"> Required! </span> 
            <br /><br /> 

            <label for="adress">Address:</label> 
            <input id="address" name="address" type="text" ng-model="person.address" required /> 
            <span class="error" ng-show="personForm.address.$error.required"> Required! </span> 
            <br /><br /> 

            <label for="contact">Contact No:</label> 
            <input id="mobile" name="mobile" type="number" ng-model="person.mobile" required /> 
            <span class="error" ng-show="personForm.mobile.$error.required">Required number!</span> 
            <br /><br />

            <label for="email">Email:</label> 
            <input id="email" name="email" type="email" ng-model="person.email" required /> 
            <span class="error" ng-show="personForm.email.$error.required">Required!</span> 
            <span class="error" ng-show="personForm.email.$error.email">Invalid Email!</span> 
            <br /><br /> 

            <input type="checkbox" ng-model="terms" name="terms" id="terms" required /> 
            <label for="terms">Agree</label> 
            <span class="error" ng-show="personForm.terms.$error.required">Please!!agree above details are correct..</span> 
            <br /><br /> 

            <button type="submit">Submit Form</button> 
            <br /><br /> 
        </form> 
    </body> 
</html>
