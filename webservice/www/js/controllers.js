angular.module('starter.controllers', [])

.controller('homeCtrl', function($scope,$state){
        
})

.controller('repositoryDetailCtrl', function($scope,$stateParams,$ionicPopup,$ionicModal,$state,temanService){
        
    $scope.showDataId = function() {
      temanService.getId($stateParams.repositoryId).success(function(repository) {
            $scope.repository = repository;
        });
        
    };
    $scope.showDataId();
    
    $scope.back = function (){
        $state.go('tab.teman');
    };
    
    $ionicModal.fromTemplateUrl('edit.html', function(modal){
        $scope.taskModal = modal;
	}, {
            scope : $scope,
            animation : 'slide-in-up'	
	});
        
        $scope.showAlert = function(msg) {
            $ionicPopup.alert({
                title: msg.title,
                template: msg.message,
                okText: 'Ok',
                okType: 'button-positive'
            });
          };
	
	$scope.editModal = function(){
            $scope.taskModal.show();
	};
	
	$scope.batal = function(){
            $scope.taskModal.hide();
            $scope.showDataId();
	};
        
	$scope.edit = function(id,nama_barang,jenis_barang){
            if (!id){
                $scope.showAlert({
                    title: "Information",
                    message: "ID Mohon Diisi"
                });
            }else if (!nama_barang){
                $scope.showAlert({
                    title: "Information",
                    message: "Nama Mohon Diisi"
                });
            }else if(!jenis_barang){
                $scope.showAlert({
                    title: "Information",
                    message: "Jenis Barang Mohon Diisi"
                });
            }else{
                $scope.id = id;
                $scope.nama_barang = nama_barang;
                $scope.jenis_barang = jenis_barang;
                temanService.update({
                    'id' : id,
                    'nama_barang': nama_barang,
                    'jenis_barang': jenis_barang
                }).then(function(resp) {
                  console.log('Success', resp);
                  $scope.showAlert({
                        title: "Information",
                        message: "Data Telah Diupdate"
                    });
                },function(err) {
                  console.error('Error', err);
                }); 
            }
	};
	
})

.controller('tabCtrl', function($scope){
})

.controller('dataRepositoryCtrl', function($scope,$state, temanService){
    $scope.showData = function() {
      temanService.getAll().success(function(data) {
            $scope.repositorys = data;
        }).finally(function() {
            $scope.$broadcast('scroll.refreshComplete');
        });
    };
    $scope.showData();
    
    $scope.reload = function (){
        $state.go('tab.teman');
    };
    
    $scope.delete = function (repository){
        temanService.delete(repository.id);
        $scope.repositorys.splice($scope.repositorys.indexOf(repository),1);
    };
})

.controller('tambahRepositoryCtrl', function($scope,$ionicPopup,temanService){
    $scope.showAlert = function(msg) {
      $ionicPopup.alert({
          title: msg.title,
          template: msg.message,
          okText: 'Ok',
          okType: 'button-positive'
      });
    };
    
    $scope.repository={};
    $scope.simpan = function (){
        if (!$scope.repository.nama_barang){
            $scope.showAlert({
                title: "Information",
                message: "Nama Barang Mohon Diisi"
            });
        }else if (!$scope.repository.jenis_barang){
            $scope.showAlert({
                title: "Information",
                message: "Jenis Barang Mohon Diisi"
            });
        }else{
            temanService.create({
                nama_barang: $scope.repository.nama_barang,
                jenis_barang: $scope.repository.jenis_barang
            }).success(function(data){
                $scope.showAlert({
                    title: "Information",
                    message: "Data Telah Tersimpan"
                });
            });
        }
        
    };
       
});
