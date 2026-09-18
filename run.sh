sudo systemctl enable xrdp
sudo systemctl restart xrdp
sudo ss -tlnp | grep xrdp
mstsc.exe /v:localhost:3390
