source .venv/bin/activate
cd "Robust decoder/"
# Dataset construction
# generate the corrupted encrypted/decrypted bitstream
# BER is set to $`10^-5`$
python error_injection.py

# Stage 1
# To decode our corrupted encrypted/decrypted bitstream with our 
# robust decoder to achieve block-level alignment and compensation
python alignment.py