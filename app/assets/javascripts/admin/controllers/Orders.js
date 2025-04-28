(function () {
  var module = angular.module("orders-module", []);

  module.controller("OrdersController", [
    "$http",
    "$scope",
    "$compile",
    "$rootScope",
    function ($http, $scope, $compile, $rootScope) {
      var self = this;
      this.orders = null;
      this.selectedOrder = null;

      this.init = function (funnelId) {
        this.onFetch();
      };

      this.onSelectOrder = function (order) {
        this.onFetchOrderById(order);
      };

      this.onFetch = function () {
        const params = {
          ...App.auth,
        };

        // Send an AJAX request to update the node's position
        $http
          .get(`/api/v1/orders.json`, { params })
          .then(function (response) {
            self.orders = response.data.data;
          });
      };

      this.onFetchOrderById = function (order) {
        const params = {
          ...App.auth,
        };

        // Send an AJAX request to update the node's position
        $http
          .get(`/api/v1/orders/${order.id}.json`, { params })
          .then(function (response) {
            self.selectedOrder = response.data;
          });
      };

      this.onCreate = function () {
        const params = {
          ...App.auth,
        };

        // Send an AJAX request to update the node's position
        $http.post(`/api/v1/orders.json`, params).then(function (response) {
          self.selectedOrder = response.data
        });
      };

      this.onUpdate = function (){
        const params = {
          ...App.auth,
        };

        // Send an AJAX request to update the node's position
        $http.put(`/api/v1/orders/${this.selectedOrder.id}.json`, params).then(function (response) {
          
        });
      }

      this.onAddProduct = function(product) {

      }

      this.onRemoveProduct = function(product) {
        
      }

      this.onAddPayment = function(){

      }

      this.onUpdatePayment = function(){

      }

      this.onRemovePayment = function(){

      }

      this.onAddClient = function(){

      }

      this.onUpdateClient = function(){

      }

      this.onRemoveClient = function(){
        
      }

      this.onOpenRegister = function() {

      }

      this.onPrintOrder = function() {

      }

      this.onPrintUpdatedOrder = function(){
        
      }

      this.onPrintReceipt = function() {

      }

      
    },
  ]);
})();
