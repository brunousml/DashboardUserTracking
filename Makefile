migration:
	@echo "***********************"
	@echo "* START MIGRATIONS    *"
	@echo "***********************"
	rails db:migrate

start:
	@echo "***********************"
	@echo "*   START SERVER      *"
	@echo "***********************"
	@rails server
