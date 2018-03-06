mkdir /mnt/data/relocated
mkdir /mnt/data/relocated/var
mkdir /mnt/data/relocated/var/cache
mkdir /mnt/data/relocated/var/lib
mv /var/cache/apt /mnt/data/relocated/var/cache
ln -s /mnt/data/relocated/var/cache/apt /var/cache/apt
mv /var/lib/apt /mnt/data/relocated/var/lib
ln -s /mnt/data/relocated/var/lib/apt /var/lib/apt
rm /var/log/*.gz
rm /var/log/*.1
#old logs
find /mnt/data/rockrobo/rrlog/ -name \*.log.gz -type f -delete
find /mnt/data/rockrobo/rrlog/ -name \*.old.gz -type f -delete
find /mnt/data/rockrobo/rrlog/ -name \*.gz -type f -mtime +7 -delete
find /mnt/data/rockrobo/rrlog/ -name \*.stat -type f -mtime +7 -delete
find /mnt/data/rockrobo/rrlog/ -empty -type d -delete
