# =========================================================
# Special Deployment Parameters needed for Nginx Deployment
# ---------------------------------------------------------
# The results need to be encoded as OpenShift template
# parameters for use with oc process.
# =========================================================

generateUsername() {
  # Generate a random username and Base64 encode the result ...
  _userName=USER_$( cat /dev/urandom | LC_CTYPE=C tr -dc 'a-zA-Z0-9' | fold -w 4 | head -n 1 )
  _userName=$(echo -n "${_userName}"|base64)
  echo ${_userName}
}

generatePassword() {
  # Generate a random password and Base64 encode the result ...
  _password=$( cat /dev/urandom | LC_CTYPE=C tr -dc 'a-zA-Z0-9_' | fold -w 16 | head -n 1 )
  _password=$(echo -n "${_password}"|base64)  
  echo ${_password}
}

_userName=$(generateUsername)
_password=$(generatePassword)

SPECIALDEPLOYPARMS="-p HTTP_BASIC_USERNAME=${_userName} -p HTTP_BASIC_PASSWORD=${_password}"
echo ${SPECIALDEPLOYPARMS}

