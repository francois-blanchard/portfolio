create_thumb:
	./utils/create-thumb.sh assets/img/portfolio

sync_portfolio: create_thumb
	aws s3 sync assets/img/portfolio s3://paro-cdn/portfolio/ --profile paro --exclude ".DS_Store"

dry_sync_portfolio: create_thumb
	aws s3 sync assets/img/portfolio s3://paro-cdn/portfolio/ --profile paro --exclude ".DS_Store" --dryrun
