function initMap() {
    var uluru = { lat: 4.885502, lng: 114.931423 };
    var map = new
        google.maps.Map(document.getElementById('map'), {
            zoom: 18, 
            center: uluru
        });
    var marker = new google.maps.Marker({
        position: uluru,
        map: map
    });
}