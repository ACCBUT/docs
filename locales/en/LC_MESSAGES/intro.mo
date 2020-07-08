��    y      �              �  M   �     �  2     _   H  K   �  .   �  7   #	  Q   [	  �   �	  M   I
  ~   �
  ]     c   t     �  @   �     0  )   9  	   c  0   m  �   �     :  &   >  #   e     �  ?   �     �     �       %   /  �   U        m   /  7   �  �   �  @   j  Y   �  '        -     :     X     q  O   ~  �   �  �   u     �  �     L   �  �   8  0   �       \   '  $   �  @   �  R   �     =  L   U  *   �  E   �  6     D   J  M   �  r   �  �   P  d   �     <     J     Y     k  ?   x  &   �     �  H   �  B   6     y  -   �  "   �     �  0   �  �     )   �  >   �  ;     �   A  v     �   �  ~   f    �  �   �  �   �   >   ;!  0   z!  \   �!  E   "     N"  �   ^"     #  )   #  %   H#  \   n#  7   �#  ;   $  r   ?$  "   �$  5   �$  >   %  >   J%     �%     �%  )   �%  +   �%     &  ,   0&  <   ]&     �&      �&  8   �&  H   '  0   U'  ?   �'  >   �'  |  (  M   �)     �)  2   �)  _   *  K   }*  .   �*  7   �*  Q   0+  �   �+  M   ,  ~   l,  ]   �,  c   I-     �-  @   �-     .  )   .  	   8.  0   B.  �   s.     /  &   /  #   :/     ^/  ?   r/     �/     �/     �/  %   0  �   *0      �0  m   1  7   r1  �   �1  @   ?2  Y   �2  '   �2     3     3     -3     F3  O   S3  �   �3  �   J4     �4  �   �4  L   �5  �   6  0   �6     �6  \   �6  $   Y7  @   ~7  R   �7     8  L   *8  *   w8  E   �8  6   �8  D   9  M   d9  r   �9  �   %:  d   �:     ;     ;     .;     @;  ?   M;  &   �;     �;  H   �;  B   <     N<  -   h<  "   �<     �<  0   �<  �   �<  )   q=  >   �=  ;   �=  �   >  v   �>  �   c?  ~   ;@    �@  �   �A  �   �B  >   C  0   OC  \   �C  E   �C     #D  �   3D     �D  )   �D  %   E  \   CE  7   �E  ;   �E  r   F  "   �F  5   �F  >   �F  >   G     ^G     pG  )   �G  +   �G     �G  ,   H  <   2H     oH      �H  8   �H  H   �H  0   *I  ?   [I  >   �I   "Common" MCUs like STM32F, STM32H, NXP Kinetis, LPC, iMX, dsPIC33, PIC32 etc. --gc-sections linker flag -fdata-sections -ffunction-sections compiler flags A major, minor or bug fix release is created (based on the new features) from the master branch Advanced graphics with animations, anti-aliasing, opacity, smooth scrolling After 2 weeks start again from the first point All major versions are officially supported for 1 year. All repositories of the LVGL project are hosted n GitHub: https://github.com/lvgl Although you can get LVGL for free there is a huge work behind it. It's created by a group of volunteers who made it available for you in their free time. And anything else with a strong enough MCU and a periphery to drive a display Basically, every modern controller  (which is able to drive a display( is suitable to run LVGL. The minimal requirements are: Be sure you are calling lv_disp_flush_ready(drv) at the end of your "display flush callback". Be sure you are calling lv_tick_inc(x) in an interrupt and lv_task_handler() in your main while(1). Binding to MicroPython Bluetooth, GSM, WiFi modules like Nordic NRF and Espressif ESP32 Branches Bug fixes are merged directly into master Changelog Documentation is available as online and offline Every MCU which is capable of driving a display via Parallel port, SPI, RGB interface or anything else and fulfills the Requirements is supported by LLVGL. FAQ Free and open-source under MIT license Fully customizable graphic elements Gray-scale displays Hardware independent to use with any microcontroller or display How to reduce flash/ROM usage? How to reduce the RAM usage How to speed up my UI? How to work with an operating system? If you are using 16 bit colors with SPI (or other byte-oriented interface) probably you need to set LV_COLOR_16_SWAP  1 in lv_conf.h. It swaps the upper and lower bytes of the pixels. If you are using GCC you can add If your display has SPI port consider changing to a model with parallel because it has much higher throughput Immediately after the release dev is merged into master In the core repositories each major version has a branch (e.g. release/v6). All the minor and patch releases of that major version are merged there. In the upcoming 2 weeks the new features in master can be tested Increase the clock speed of the SPI or Parallel port if you use them to drive the display Increase the size of the display buffer Introduction Is my MCU/hardware supported? Is my display supported? It includes: It makes possible to add fixed older versions without bothering the newer ones. It's not mandatory but we highly appreciate it if you write a few words about your project in the My projects category of the Forum or a private message from lvgl.io. Keep the display buffer in the internal RAM (not in external SRAM) because LVGL uses it a lot and it should have a small access time Key features LVGL (Light and Versatile Graphics Library) is a free and open-source graphics library providing everything you need to create embedded GUI with easy-to-use graphical elements, beautiful visual effects and low memory footprint. LVGL has 2 weeks release cycle. On every first and third Tuesday of a month: LVGL needs just one simple driver function to copy an array of pixels into a given area of the display. If you can do this with your display then you can use that display with LVGL. Learn more in the Tick and Task handler section. License Linux frame buffer like /dev/fb0 which includes Single-board computers too like Raspberry Pi Lower the size of the Display buffer Major versions for incompatible API changes. E.g. v5.0.0, v6.0.0 Minor version for new but backward-compatible functionalities. E.g. v6.1.0, v6.2.0 Monitors with HDMI port Multi-display support, i.e. use more TFT, monochrome displays simultaneously Multi-language support with UTF-8 encoding Nothing happens, my display driver is not called. What have I missed? OS, External memory and GPU supported but not required Patch version for backward-compatible bug fixes. E.g. v6.1.1, v6.1.2 Powerful building blocks such as buttons, charts, lists, sliders, images etc. Probably LVGL's color format is not compatible with your displays color format. Check LV_COLOR_DEPTH in lv_conf.h. Probably there a bug in your display driver. Try the following code without using LVGL. You should see a square with red-blue gradient Reduce LV_MEM_SIZE in lv_conf.h. This memory used when you create objects like buttons, labels, etc. Release cycle Release policy Repository layout Requirements Scalable to operate with little memory (64 kB Flash, 16 kB RAM) See the Porting section to learn more. Side projects Simulator to start embedded GUI design on a PC without embedded hardware Single frame buffer operation even with advanced graphical effects Small monochrome displays Some examples of the supported display types: TFTs with 16 or 24 bit color depth Tags Tags like vX.Y.Z are created for every release. The LVGL project (including all repositories) is licensed under MIT license. It means you can use it even in commercial projects. The changes are recorded in CHANGELOG.md. The core repositories follow the rules of Semantic versioning: The core repositories have at least the following branches: The docs is rebuilt on every release. By default, the latest documentation is displayed which is for the current master branch of lvgl. The documentation of earlier versions is available from the menu on the left. The lvgl,  lv_examples and lv_drivers are the core repositories which gets the most attentions regarding maintenance. The only thing you need to do is to add a notice about you are using LVGL in your product. This notice can be placed in the user guide, on your website, on an about screen, or anywhere else where users might see it. The simulator, porting, and other projects are updated with best effort. Pull requests are welcome if you updated one of them. To make the LVGL project sustainable, please consider Contributing to the project. You can choose from many ways of contributions such as simply writing a tweet about you are using LVGL, fixing bugs, translating the documentation, or even becoming a maintainer. To work with an operating system where tasks can interrupt each other (preemptive) you should protect LVGL related function calls with a mutex. See the Operating system and interrupts section to learn more. To work with lower LV_MEM_SIZE you can create the objects only when required and deleted them when they are not required anymore Turn on compiler optimization and enable cache if your MCU has Tutorials, examples, themes for rapid GUI design Use 2 display buffers and flush the buffer with DMA (or similar periphery) in the background Various input devices such as touchpad, mouse, keyboard, encoder etc. Version support We use GitHub issues for development related discussion. So you should use them only if your question or issue is tightly related to the development of the library. Where can I ask questions? Why I see non-sense colors on the screen? Why I see only garbage on the screen? Why the display driver is called only once? Only the upper part of the display is refreshed. Written in C for maximal compatibility (C++ compatible) You can ask questions in the Forum: https://forum.lvgl.io/. You can disable all the unused features (such as animations, file system, GPU etc.) and object types in lv_conf.h. You fill these repositories there: blog Source of the blog's site (https://blog.lvgl.io) dev merge new features here until they are merged into master. docs Source of the documentation's site (https://docs.lvgl.io) even LED matrices lv_... Ports to other platforms lv_binding_.. Bindings to other languages lv_drivers Display and input device drivers lv_examples Examples and demos lv_port_... LVGL ports to development boards lv_sim_... Simulator projects for various IDEs and platforms lvgl The library itself master is merged into release/vX master latest version, patches are merged directly here. or any other display where you can control the color/state of the pixels release/vX stable versions of the major releases sim Source of the online simulator's site (https://sim.lvgl.io) to remove unused functions and variables from the final binary Project-Id-Version: LVGL v7.0.2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-07-08 10:49+0200
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: en
Language-Team: en <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 "Common" MCUs like STM32F, STM32H, NXP Kinetis, LPC, iMX, dsPIC33, PIC32 etc. --gc-sections linker flag -fdata-sections -ffunction-sections compiler flags A major, minor or bug fix release is created (based on the new features) from the master branch Advanced graphics with animations, anti-aliasing, opacity, smooth scrolling After 2 weeks start again from the first point All major versions are officially supported for 1 year. All repositories of the LVGL project are hosted n GitHub: https://github.com/lvgl Although you can get LVGL for free there is a huge work behind it. It's created by a group of volunteers who made it available for you in their free time. And anything else with a strong enough MCU and a periphery to drive a display Basically, every modern controller  (which is able to drive a display( is suitable to run LVGL. The minimal requirements are: Be sure you are calling lv_disp_flush_ready(drv) at the end of your "display flush callback". Be sure you are calling lv_tick_inc(x) in an interrupt and lv_task_handler() in your main while(1). Binding to MicroPython Bluetooth, GSM, WiFi modules like Nordic NRF and Espressif ESP32 Branches Bug fixes are merged directly into master Changelog Documentation is available as online and offline Every MCU which is capable of driving a display via Parallel port, SPI, RGB interface or anything else and fulfills the Requirements is supported by LLVGL. FAQ Free and open-source under MIT license Fully customizable graphic elements Gray-scale displays Hardware independent to use with any microcontroller or display How to reduce flash/ROM usage? How to reduce the RAM usage How to speed up my UI? How to work with an operating system? If you are using 16 bit colors with SPI (or other byte-oriented interface) probably you need to set LV_COLOR_16_SWAP  1 in lv_conf.h. It swaps the upper and lower bytes of the pixels. If you are using GCC you can add If your display has SPI port consider changing to a model with parallel because it has much higher throughput Immediately after the release dev is merged into master In the core repositories each major version has a branch (e.g. release/v6). All the minor and patch releases of that major version are merged there. In the upcoming 2 weeks the new features in master can be tested Increase the clock speed of the SPI or Parallel port if you use them to drive the display Increase the size of the display buffer Introduction Is my MCU/hardware supported? Is my display supported? It includes: It makes possible to add fixed older versions without bothering the newer ones. It's not mandatory but we highly appreciate it if you write a few words about your project in the My projects category of the Forum or a private message from lvgl.io. Keep the display buffer in the internal RAM (not in external SRAM) because LVGL uses it a lot and it should have a small access time Key features LVGL (Light and Versatile Graphics Library) is a free and open-source graphics library providing everything you need to create embedded GUI with easy-to-use graphical elements, beautiful visual effects and low memory footprint. LVGL has 2 weeks release cycle. On every first and third Tuesday of a month: LVGL needs just one simple driver function to copy an array of pixels into a given area of the display. If you can do this with your display then you can use that display with LVGL. Learn more in the Tick and Task handler section. License Linux frame buffer like /dev/fb0 which includes Single-board computers too like Raspberry Pi Lower the size of the Display buffer Major versions for incompatible API changes. E.g. v5.0.0, v6.0.0 Minor version for new but backward-compatible functionalities. E.g. v6.1.0, v6.2.0 Monitors with HDMI port Multi-display support, i.e. use more TFT, monochrome displays simultaneously Multi-language support with UTF-8 encoding Nothing happens, my display driver is not called. What have I missed? OS, External memory and GPU supported but not required Patch version for backward-compatible bug fixes. E.g. v6.1.1, v6.1.2 Powerful building blocks such as buttons, charts, lists, sliders, images etc. Probably LVGL's color format is not compatible with your displays color format. Check LV_COLOR_DEPTH in lv_conf.h. Probably there a bug in your display driver. Try the following code without using LVGL. You should see a square with red-blue gradient Reduce LV_MEM_SIZE in lv_conf.h. This memory used when you create objects like buttons, labels, etc. Release cycle Release policy Repository layout Requirements Scalable to operate with little memory (64 kB Flash, 16 kB RAM) See the Porting section to learn more. Side projects Simulator to start embedded GUI design on a PC without embedded hardware Single frame buffer operation even with advanced graphical effects Small monochrome displays Some examples of the supported display types: TFTs with 16 or 24 bit color depth Tags Tags like vX.Y.Z are created for every release. The LVGL project (including all repositories) is licensed under MIT license. It means you can use it even in commercial projects. The changes are recorded in CHANGELOG.md. The core repositories follow the rules of Semantic versioning: The core repositories have at least the following branches: The docs is rebuilt on every release. By default, the latest documentation is displayed which is for the current master branch of lvgl. The documentation of earlier versions is available from the menu on the left. The lvgl,  lv_examples and lv_drivers are the core repositories which gets the most attentions regarding maintenance. The only thing you need to do is to add a notice about you are using LVGL in your product. This notice can be placed in the user guide, on your website, on an about screen, or anywhere else where users might see it. The simulator, porting, and other projects are updated with best effort. Pull requests are welcome if you updated one of them. To make the LVGL project sustainable, please consider Contributing to the project. You can choose from many ways of contributions such as simply writing a tweet about you are using LVGL, fixing bugs, translating the documentation, or even becoming a maintainer. To work with an operating system where tasks can interrupt each other (preemptive) you should protect LVGL related function calls with a mutex. See the Operating system and interrupts section to learn more. To work with lower LV_MEM_SIZE you can create the objects only when required and deleted them when they are not required anymore Turn on compiler optimization and enable cache if your MCU has Tutorials, examples, themes for rapid GUI design Use 2 display buffers and flush the buffer with DMA (or similar periphery) in the background Various input devices such as touchpad, mouse, keyboard, encoder etc. Version support We use GitHub issues for development related discussion. So you should use them only if your question or issue is tightly related to the development of the library. Where can I ask questions? Why I see non-sense colors on the screen? Why I see only garbage on the screen? Why the display driver is called only once? Only the upper part of the display is refreshed. Written in C for maximal compatibility (C++ compatible) You can ask questions in the Forum: https://forum.lvgl.io/. You can disable all the unused features (such as animations, file system, GPU etc.) and object types in lv_conf.h. You fill these repositories there: blog Source of the blog's site (https://blog.lvgl.io) dev merge new features here until they are merged into master. docs Source of the documentation's site (https://docs.lvgl.io) even LED matrices lv_... Ports to other platforms lv_binding_.. Bindings to other languages lv_drivers Display and input device drivers lv_examples Examples and demos lv_port_... LVGL ports to development boards lv_sim_... Simulator projects for various IDEs and platforms lvgl The library itself master is merged into release/vX master latest version, patches are merged directly here. or any other display where you can control the color/state of the pixels release/vX stable versions of the major releases sim Source of the online simulator's site (https://sim.lvgl.io) to remove unused functions and variables from the final binary 