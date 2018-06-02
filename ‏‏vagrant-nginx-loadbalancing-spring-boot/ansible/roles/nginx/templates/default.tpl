server {
    listen  8080;
    root {{ nginx.docroot }};
    server_name {{ nginx.servername }};
}
