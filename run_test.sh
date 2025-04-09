#!/bin/bash
# run_test.sh
echo "Running -test..."
chmod +x ./rknn_ppocr_system_demo run_test.sh
export LD_LIBRARY_PATH=./lib:$LD_LIBRARY_PATH
./rknn_ppocr_system_demo model/ppocrv4_det.rknn model/ppocrv4_rec.rknn model/test.jpg
