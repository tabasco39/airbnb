module GoogleMapsHelper
    def google_maps_api_script_tag
      javascript_include_tag google_maps_api_source
    end
  
    def google_maps_api_source
      "https://maps.googleapis.com/maps/api/js?key=#{google_maps_api_key}"
    end
  
    def google_maps_api_key
      Rails.application.secrets.google_maps_api_key
    end
end