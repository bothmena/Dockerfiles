#!/bin/bash


set -m

DEFAULT_IP="12.34.56.789"
ip_address="${1:-$DEFAULT_IP}"

jupyter notebook stop
jupyter notebook --allow-root --no-browser &

sleep 2

url=$(jupyter notebook list | grep http | head -n 1)
result=$(echo "$url" | sed -e "s/127.0.0.1/$ip_address/" -e "s/0.0.0.0/$ip_address/")

echo ""
python -c "import sys; l = len(sys.argv[1]); print('-' * l)" $result
echo ""
python -c "import sys; print(sys.argv[1])" $result
echo ""
python -c "import sys; l = len(sys.argv[1]); print('-' * l)" $result
echo ""

fg %1
