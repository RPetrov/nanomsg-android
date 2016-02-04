LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)



LOCAL_MODULE := libnano


LOCAL_SRC_FILES := src/core/epbase.c src/core/sock.c src/core/poll.c	\
    src/core/symbol.c src/core/ep.c src/core/pipe.c			\
    src/core/sockbase.c src/core/global.c src/devices/device.c		\
    src/transports/inproc/ins.c src/transports/inproc/inproc.c		\
    src/transports/inproc/cinproc.c src/transports/inproc/binproc.c	\
    src/transports/inproc/sinproc.c src/transports/inproc/msgqueue.c	\
    src/transports/utils/dns.c src/transports/utils/literal.c		\
    src/transports/utils/streamhdr.c src/transports/utils/backoff.c	\
    src/transports/utils/iface.c src/transports/utils/port.c		\
    src/transports/tcp/tcp.c src/transports/tcp/stcp.c			\
    src/transports/tcp/ctcp.c src/transports/tcp/atcp.c			\
    src/transports/tcp/btcp.c src/transports/ipc/aipc.c			\
    src/transports/ipc/bipc.c src/transports/ipc/cipc.c			\
    src/transports/ipc/ipc.c src/transports/ipc/sipc.c			\
    src/protocols/survey/xrespondent.c					\
    src/protocols/survey/surveyor.c src/protocols/survey/xsurveyor.c	\
    src/protocols/survey/respondent.c src/protocols/pair/pair.c		\
    src/protocols/pair/xpair.c src/protocols/utils/dist.c		\
    src/protocols/utils/priolist.c src/protocols/utils/fq.c		\
    src/protocols/utils/excl.c src/protocols/utils/lb.c			\
    src/protocols/bus/xbus.c src/protocols/bus/bus.c			\
    src/protocols/pipeline/xpull.c src/protocols/pipeline/push.c	\
    src/protocols/pipeline/pull.c src/protocols/pipeline/xpush.c	\
    src/protocols/reqrep/rep.c src/protocols/reqrep/req.c		\
    src/protocols/reqrep/xrep.c src/protocols/reqrep/task.c		\
    src/protocols/reqrep/xreq.c src/protocols/pubsub/sub.c		\
    src/protocols/pubsub/xpub.c src/protocols/pubsub/xsub.c		\
    src/protocols/pubsub/trie.c src/protocols/pubsub/pub.c		\
    src/aio/worker.c src/aio/fsm.c src/aio/ctx.c src/aio/usock.c	\
    src/aio/poller.c src/aio/pool.c src/aio/timerset.c			\
    src/aio/timer.c src/utils/err.c src/utils/thread.c			\
    src/utils/closefd.c src/utils/atomic.c src/utils/list.c		\
    src/utils/stopwatch.c src/utils/random.c src/utils/wire.c		\
    src/utils/mutex.c src/utils/msg.c src/utils/clock.c			\
    src/utils/queue.c src/utils/chunk.c src/utils/efd.c			\
    src/utils/hash.c src/utils/alloc.c src/utils/glock.c		\
    src/utils/sleep.c src/utils/chunkref.c src/utils/sem.c




LOCAL_C_INCLUDES := bionic

LOCAL_CPPFLAGS += -D_REENTRANT -D_THREAD_SAFE -DZMQ_FORCE_POLL -fPIC


#APP_STL:=stlport_static
APP_STL := gnustl_static
APP_CPPFLAGS:= -std=c++11 -frtti -fexceptions
NDK_TOOLCHAIN_VERSION=4.8
APP_PLATFORM := android-14
TARGET_PLATFORM := android-14
#APP_ABI := all
APP_ABI := armeabi



LOCAL_CFLAGS :=  \
	-DNN_HAVE_EVENTFD \
	-DNN_HAVE_SEMAPHORE \
	-DNN_HAVE_POLL \
	-DNN_USE_POLL \
	-DNN_USE_LITERAL_IFADDR


include $(BUILD_SHARED_LIBRARY)