
# Serial Logger

// disable bluetooth service
sudo systemctl disable hciuart

#

/boot/config.txt:
```

[all]
enable_uart=1
init_uart_clock=230400
init_uart_clock=64000000
dtoverlay=disable-bt

```

