<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SelectLocation.aspx.cs" Inherits="SelectLocation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
    var myLocation;
    var map;

   function initialize() {
       var mapProp = {
           center: { lat: 51.508742, lng: -0.120850 },
           zoom: 5,
           mapTypeId: google.maps.MapTypeId.ROADMAP
       };
       map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
   }
   function getLocation() {
     
       if (navigator.geolocation) {
           navigator.geolocation.getCurrentPosition(function(position) {
               alert("4");
               myLocation = new google.map.LatLng(position.coords.latitude, position.coords.longitude);
               alert("5");
               map.setCenter(myLocation);
               alert("6");
           },alert("Geolocation error"));
         
       } else {
           alert("Geolocation is not supported by your browser");
       }
   }

   


   google.maps.event.addDomListener(window, 'load', initialize);
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <div id="googleMap" style="width:500px;height:380px;"></div>
        <asp:Button ID="Button1" Height="45px" Text="Use My Location" Width="499px" OnClientClick="getLocation();" runat="server" />
    </form>
</body>
</html>
