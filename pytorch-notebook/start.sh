#!/bin/bash


set -m

ip_address="${HOST_IP}"

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
