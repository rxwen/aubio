LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	src/effects/pitchshift_dummy.c \
	src/effects/pitchshift_rubberband.c \
	src/effects/rubberband_utils.c \
	src/effects/timestretch_rubberband.c \
	src/effects/timestretch_dummy.c \
	src/io/source_apple_audio.c \
	src/io/sink_flac.c \
	src/io/sink.c \
	src/io/sink_vorbis.c \
	src/io/audio_unit.c \
	src/io/sink_sndfile.c \
	src/io/sink_wavwrite.c \
	src/io/source.c \
	src/io/source_wavread.c \
	src/io/source_sndfile.c \
	src/io/source_avcodec.c \
	src/io/utils_apple_audio.c \
	src/io/ioutils.c \
	src/io/sink_apple_audio.c \
	src/onset/peakpicker.c \
	src/onset/onset.c \
	src/utils/parameter.c \
	src/utils/windll.c \
	src/utils/scale.c \
	src/utils/strutils.c \
	src/utils/log.c \
	src/utils/hist.c \
	src/fvec.c \
	src/synth/wavetable.c \
	src/synth/sampler.c \
	src/tempo/tempo.c \
	src/tempo/beattracking.c \
	src/temporal/a_weighting.c \
	src/temporal/filter.c \
	src/temporal/biquad.c \
	src/temporal/c_weighting.c \
	src/temporal/resampler.c \
	src/vecutils.c \
	src/spectral/awhitening.c \
	src/spectral/specdesc.c \
	src/spectral/dct_ooura.c \
	src/spectral/ooura_fft8g.c \
	src/spectral/fft.c \
	src/spectral/tss.c \
	src/spectral/statistics.c \
	src/spectral/filterbank.c \
	src/spectral/dct_plain.c \
	src/spectral/dct.c \
	src/spectral/dct_accelerate.c \
	src/spectral/dct_fftw.c \
	src/spectral/mfcc.c \
	src/spectral/filterbank_mel.c \
	src/spectral/dct_ipp.c \
	src/spectral/phasevoc.c \
	src/mathutils.c \
	src/cvec.c \
	src/fmat.c \
	src/musicutils.c \
	src/pitch/pitchyinfft.c \
	src/pitch/pitchyin.c \
	src/pitch/pitchfcomb.c \
	src/pitch/pitchmcomb.c \
	src/pitch/pitch.c \
	src/pitch/pitchschmitt.c \
	src/pitch/pitchyinfast.c \
	src/pitch/pitchspecacf.c \
	src/lvec.c \
	src/notes \
	src/notes/notes.c


LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/src

LOCAL_CFLAGS += -D HAVE_STDLIB_H \
				-D HAVE_STDIO_H \
				-D HAVE_MATH_H \
				-D HAVE_STRING_H \
				-D HAVE_ERRNO_H \
				-D HAVE_LIMITS_H \
				-D HAVE_UNISTD_H \
				-D HAVE_STDARG_H

LOCAL_MODULE_TAGS := eng

LOCAL_MODULE := libaubio

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
		examples/utils.c \
		examples/jackio.c \
		examples/aubiopitch.c

LOCAL_CFLAGS += -D HAVE_STDLIB_H \
				-D HAVE_STDIO_H \
				-D HAVE_MATH_H \
				-D HAVE_STRING_H \
				-D HAVE_ERRNO_H \
				-D HAVE_LIMITS_H \
				-D HAVE_UNISTD_H \
				-D HAVE_STDARG_H \

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/examples \
	$(LOCAL_PATH)/src

LOCAL_MODULE_TAGS := eng

LOCAL_SHARED_LIBRARIES += libaubio

LOCAL_MODULE := aubiopitch

include $(BUILD_EXECUTABLE)
