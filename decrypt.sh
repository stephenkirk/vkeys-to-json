FULL_FILENAME=$1
FILENAME="${FULL_FILENAME%.*}"
OUT_FILENAME="$FILENAME.keysjson"
DECRYPT_KEY=344e6675726239344236695736345144

openssl enc -aes-128-cbc -d -in $FULL_FILENAME -out $OUT_FILENAME -K $DECRYPT_KEY -iv 0
