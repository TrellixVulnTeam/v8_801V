# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := generate_trig_table
### Rules for action "generate":
quiet_cmd_generate_trig_table_generate = ACTION generate_trig_table_generate $@
cmd_generate_trig_table_generate = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd $(srcdir)/tools/gyp; mkdir -p $(obj)/gen; python ../../tools/generate-trig-table.py "$(obj)/gen/trig-table.cc"

$(obj)/gen/trig-table.cc: obj := $(abs_obj)
$(obj)/gen/trig-table.cc: builddir := $(abs_builddir)
$(obj)/gen/trig-table.cc: TOOLSET := $(TOOLSET)
$(obj)/gen/trig-table.cc: $(srcdir)/tools/generate-trig-table.py FORCE_DO_CMD
	$(call do_cmd,generate_trig_table_generate)

all_deps += $(obj)/gen/trig-table.cc
action_generate_trig_table_generate_outputs := $(obj)/gen/trig-table.cc


### Rules for final target.
# Build our special outputs first.
$(obj).target/tools/gyp/generate_trig_table.stamp: | $(action_generate_trig_table_generate_outputs)

# Preserve order dependency of special output on deps.
$(action_generate_trig_table_generate_outputs): | 

$(obj).target/tools/gyp/generate_trig_table.stamp: TOOLSET := $(TOOLSET)
$(obj).target/tools/gyp/generate_trig_table.stamp:  FORCE_DO_CMD
	$(call do_cmd,touch)

all_deps += $(obj).target/tools/gyp/generate_trig_table.stamp
# Add target alias
.PHONY: generate_trig_table
generate_trig_table: $(obj).target/tools/gyp/generate_trig_table.stamp

# Add target alias to "all" target.
.PHONY: all
all: generate_trig_table

