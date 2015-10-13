<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SelectLocation.aspx.cs" Inherits="SelectLocation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
    //var x = document.getElementById("demo");
    var browserSupportFlag = new Boolean();
    var initialLocation;
    var siberia = new google.maps.LatLng(60, 105);
    var newyork = new google.maps.LatLng(40.69847032728747, -73.9514422416687);


function initialize() {
  
  if (navigator.geolocation) {
      browserSupportFlag = true;
      navigator.geolocation.getCurrentPosition(function(position) {
          intialLocation = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
          //map.setCenter(initialLocation); 
      }, function () {
          handleNoGeolocation(browserSupportFlag);
      });
  }
  else {
      browserSupportFlag = false;
      handleNoGeolocation(browserSupportFlag);
  }

  function handleNoGeolocation(errorFlag) {
      if (errorFlag == true) {
          alert("Geolocation service failed.");
          initialLocation = newyork;
      } else {
          alert("Your browser doesn't support geolocation. We've placed you in Siberia.");
          initialLocation = siberia;
      }
    //map.setCenter(initialLocation);
  }

  var mapProp = {
      center: initialLocation,
      zoom: 5,
      mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
}


google.maps.event.addDomListener(window, 'load', initialize);
</script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <div id="googleMap" style="width:500px;height:380px;"></div>
    </form>
</body>
</html>
