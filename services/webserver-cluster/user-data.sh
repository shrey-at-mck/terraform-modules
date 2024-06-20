#!/bin/bash
  sudo apt update -y
  sudo apt install -y apache2
  sudo systemctl start apache2
  sudo systemctl enable apache2
  cat > /var/www/html/index.html <<EOF
  <html>
    <body>
      <h1>Welcome to your new web server on port ${server_port} and db ${db_address}!</h1>
    </body>
  </html>
EOF

