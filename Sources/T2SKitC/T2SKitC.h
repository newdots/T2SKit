#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

/**
 * No error.
 */
#define ERR_OK 0

/**
 * Config parsing error.
 */
#define ERR_CONFIG 2

/**
 * IO error.
 */
#define ERR_IO 3

/**
 * Async channel send error.
 */
#define ERR_ASYNC_CHANNEL_SEND 5

/**
 * Sync channel receive error.
 */
#define ERR_SYNC_CHANNEL_RECV 6

/**
 * Runtime manager error.
 */
#define ERR_RUNTIME_MANAGER 7

/**
 * RT_ID
 */
#define RT_ID 666

/**
 * Starts tun2socks, Blocks the current thread.
 *
 * @param config The config string, must be string with json format.
 * @return ERR_OK on finish running, any other errors means a startup failure.
 */
int32_t start_tun2socks(const char *config);

/**
 * Shuts down tun2socks.
 *
 * @return Returns true on success, false otherwise.
 */
bool stop_tun2socks(void);
