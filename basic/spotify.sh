TOKEN=$(curl -X POST "https://accounts.spotify.com/api/token" \
     -H "Content-Type: application/x-www-form-urlencoded" \
     -d "grant_type=client_credentials&client_id=3fd64f4b517c4f7ba167083bdc405fcf&client_secret=1ddbc964023643dcbd8622e5e1fd5156" | jq -r '. | .access_token')

ARTIST=$(curl "https://api.spotify.com/v1/artists/4Z8W4fKeB5YxbusRsdQVPb" \
     -H "Authorization: Bearer $TOKEN" | jq -r '.images[0].url')

touch download.jpeg
curl -o download.jpeg $ARTIST