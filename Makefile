SCRIPT_NAME = ./installation/parakeet-kernel.py
COMMAND_NAME = parakeet-kernel
INSTALL_DIR = $(HOME)/.local/bin

install:
	@test -f $(SCRIPT_NAME) || { echo "$(SCRIPT_NAME) nof found"; exit 1; }
	@mkdir -p $(INSTALL_DIR)
	@ln -sf "$(CURDIR)/$(SCRIPT_NAME)" "$(INSTALL_DIR)/$(COMMAND_NAME)"
	@echo "Installed: $(INSTALL_DIR)/$(COMMAND_NAME) -> $(CURDIR)/$(SCRIPT_NAME)"

uninstall:
	@rm -f "$(INSTALL_DIR)/$(COMMAND_NAME)"
	@echo "Uninstalled: $(INSTALL_DIR)/$(COMMAND_NAME)"

check:
	@which $(COMMAND_NAME) || echo "Command $(COMMAND_NAME) not found in PATH"

.PHONY: all install uninstall check
