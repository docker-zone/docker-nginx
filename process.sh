!/bin/sh

## generate files
generate_folder()
{
	if [ ! -d $1 ]; 
	then
		mkdir -p $1
	fi
}

generate_folder $NGINX_BASE_DIRECTORY;

## make nginx
tar -zxvf /tmp/$NGINX_NAME.tar.gz
cd $NGINX_NAME
mkdir -p $NGINX_BASE_DIRECTORY
./configure --prefix=$NGINX_DIRECTORY
make && make install

## process nginx config
echo "daemon off;" >> $NGINX_DIRECTORY/conf/nginx.conf
sed -ri 's/#user\s+nobody/user root/g' $NGINX_DIRECTORY/conf/nginx.conf

