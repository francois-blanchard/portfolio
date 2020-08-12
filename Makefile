create_thumb:
	./utils/create-thumb.sh assets/img/portfolio

sync_img: create_thumb
	aws s3 sync assets/img s3://paro-cdn/attractif_design/img/ --profile paro --exclude ".DS_Store" --delete

dry_sync_img: create_thumb
	aws s3 sync assets/img s3://paro-cdn/attractif_design/img/ --profile paro --exclude ".DS_Store" --dryrun --delete
