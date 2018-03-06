env_dir=./env
python_version="3.6.1"

module load python_gpu/$python_version

if [ ! -d "$env_dir" ]; then
    python -m pip install --user virtualenv
    python -m virtualenv \
        --system-site-packages \
        --python="/cluster/apps/python/$python_version/bin/python" \
        "$env_dir"
fi

source "$env_dir/bin/activate"

#export LD_LIBRARY_PATH="${LD_LIBARY_PATH}:$CUDA_ROOT/extras/CUPTI/lib64"