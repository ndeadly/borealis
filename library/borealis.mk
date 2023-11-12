mkfile_path	:=	$(abspath $(lastword $(MAKEFILE_LIST)))
current_dir	:=	$(BOREALIS_PATH)/$(notdir $(patsubst %/,%,$(dir $(mkfile_path))))

LIBS		:=	-ldeko3d -lm $(LIBS)

include $(TOPDIR)/$(current_dir)/lib/extern/switch-libpulsar/deps.mk

SOURCES		:=	$(SOURCES) \
				$(current_dir)/lib/core \
				$(current_dir)/lib/core/touch \
				$(current_dir)/lib/views \
				$(current_dir)/lib/views/cells \
				$(current_dir)/lib/views/widgets \
				$(current_dir)/lib/platforms/switch \
				$(current_dir)/lib/extern/glad \
				$(current_dir)/lib/extern/nanovg \
				$(current_dir)/lib/extern/nanovg/deko3d \
				$(current_dir)/lib/extern/nanovg/deko3d/framework \
				$(current_dir)/lib/extern/nanovg/deko3d/shaders \
				$(current_dir)/lib/extern/libretro-common/compat \
				$(current_dir)/lib/extern/libretro-common/encodings \
				$(current_dir)/lib/extern/libretro-common/features \
				$(current_dir)/lib/extern/libromfs \
				$(current_dir)/lib/extern/nxfmtwrapper \
				$(current_dir)/lib/extern/yoga/yoga/event \
				$(current_dir)/lib/extern/yoga/yoga \
				$(current_dir)/lib/extern/tinyxml2/ \
				$(addprefix $(current_dir)/lib/extern/switch-libpulsar/, $(PLSR_SOURCES))

INCLUDES	:=	$(INCLUDES) \
				$(current_dir)/include \
				$(current_dir)/lib/extern/fmt/include \
				$(current_dir)/lib/extern/yoga \
				$(current_dir)/lib/extern/tweeny/include \
				$(current_dir)/include/borealis/extern \
				$(current_dir)/include/borealis/extern/nanovg \
				$(current_dir)/include/borealis/extern/tinyxml2 \
				$(addprefix $(current_dir)/lib/extern/switch-libpulsar/, $(PLSR_INCLUDES))

CXXFLAGS := $(CXXFLAGS) -DBRLS_RESOURCES="\"romfs:/\"" -DYG_ENABLE_EVENTS -fdata-sections -DSTBI_NO_THREAD_LOCALS -DBOREALIS_USE_DEKO3D

# LIBS		:=	-lglfw3 -lEGL -lglad -lglapi -ldrm_nouveau -lm $(LIBS)

# SOURCES		:=	$(SOURCES) \
# 			${current_dir}/lib/core \
# 			${current_dir}/lib/core/touch \
# 			${current_dir}/lib/views \
# 			${current_dir}/lib/views/cells \
# 			${current_dir}/lib/views/widgets \
# 			${current_dir}/lib/extern/glad \
# 			${current_dir}/lib/extern/libretro-common/compat \
# 			${current_dir}/lib/extern/libretro-common/encodings \
# 			${current_dir}/lib/extern/libretro-common/features \
# 			${current_dir}/lib/extern/nanovg \
# 			${current_dir}/lib/extern/yoga/yoga \
# 			${current_dir}/lib/extern/yoga/yoga/event \
# 			${current_dir}/lib/extern/tinyxml2 \
# 			${current_dir}/lib/platforms/switch \
# 			${current_dir}/lib/platforms/glfw \
# 			${current_dir}/lib/extern/switch-libpulsar/src/archive \
# 			${current_dir}/lib/extern/switch-libpulsar/src/bfgrp \
# 			${current_dir}/lib/extern/switch-libpulsar/src/bfsar \
# 			${current_dir}/lib/extern/switch-libpulsar/src/bfwar \
# 			${current_dir}/lib/extern/switch-libpulsar/src/bfwav \
# 			${current_dir}/lib/extern/switch-libpulsar/src/bfwsd \
# 			${current_dir}/lib/extern/switch-libpulsar/src/player \
# 			$(current_dir)/lib/extern/nxfmtwrapper \
# 			# ${current_dir}/lib/extern/fmt/src

# INCLUDES	:=	$(INCLUDES) \
# 			${current_dir}/include \
# 			${current_dir}/include/borealis/extern \
# 			${current_dir}/include/borealis/extern/nanovg \
# 			${current_dir}/include/borealis/extern/tinyxml2 \
# 			${current_dir}/include/borealis/platforms/glfw \
# 			${current_dir}/lib/extern/glfw/include \
# 			${current_dir}/lib/extern/switch-libpulsar/include \
# 			${current_dir}/lib/extern/yoga \
# 			${current_dir}/lib/extern/tweeny/include \
# 			${current_dir}/lib/extern/fmt/include

# CXXFLAGS := $(CXXFLAGS) -fdata-sections -DYG_ENABLE_EVENTS -DSTBI_NO_THREAD_LOCALS -DBOREALIS_USE_OPENGL -DBRLS_RESOURCES="\"romfs:/\""
