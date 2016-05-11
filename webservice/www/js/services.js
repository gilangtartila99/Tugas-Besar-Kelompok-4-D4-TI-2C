angular.module('starter.services', [])

.factory('temanService', function($http) {
    var baseUrl = 'http://localhost/tbwebservice/frontend/web/index.php/repository/';
    return {
        getAll: function() {
            return $http.get(baseUrl+'index');
        },
        getId: function (repositoryId){
            return $http.get(baseUrl+'view?id='+repositoryId); 
        },
        create: function (repository){
            return $http.post(baseUrl+'create',repository,{
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8;'
                }
            });
        },
        update: function (repository){
            return $http.post(baseUrl+'update',repository,{
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8;'
                }
            });
        },
        delete: function  (id){
            return $http.get(baseUrl+'delete?id='+id);
        }
    };
    
});
