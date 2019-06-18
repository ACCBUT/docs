# Keyboard (lv_kb)

## Overview

The Keybord object is a special [Button matrix](/object-types/btnm) with predefined key maps and other features to realize a virtual keyboard to write text. 

The Keyboards have two **modes**:
- **LV_KB_MODE_TEXT** display letters, number and special characters
- **LV_KB_MODE_NUM** display numbers, +/- sign and decimal dot

To set the mode use `lv_kb_set_mode(kb, mode)`. The default is  _LV_KB_MODE_TEXT_


You can assign a [Text area](/object-types/ta) to the Keyboard to automatically put the clicked characters there. 
To assign the Text area use `lv_kb_set_ta(kb, ta)`.

The assigned Text area's **cursor** can be **managed** by the keyboard: when the keyboard is assigned the previous Text area's cursor will be hidden an the new's will be shown. 
When the keyboard is closed by the *Ok* or *Cloase* buttons the cursor also wil be hidden. The cursor manager feature is enabled by `lv_kb_set_cursor_manage(kb, true)`. The default is not manage.

You can specify a **new map** (layout) for the keyboard with `lv_kb_set_map(kb, map)`. and `lv_kb_set_ctrl_map(kb, ctrl_map)`. 
Learn more about in the [Button matrix](/object-types/btnm) object.
Keep in mind using following keywords will have the same effect as with the original map:  
- *LV_SYMBOL_OK* Apply
- *SYMBOL_CLOSE* Close
- *LV_SYMBOL_LEFT* Move the cursor left
- *LV_SYMBOL_RIGHT* Move the cursor right
- *"ABC"* load the uppersace map
- *"abc"* load the lower case map
- *"Enter"* new line
- *"Bkps"* Delete on the left

The keyboard has a **default event handler** callback called `lv_kb_def_event_cb`. 
It handles the button pressing, map changeing, the assigned Text area, etc. 
You can completly replace it with your custom event handler but you can call `lv_kb_def_event_cb` at he beginning of your event handler to handle the same things as before.


## Styles

The Keyboards work with 6 styles: a background and 5 button styles for each states. 
You can set the styles with `lv_kb_set_style(btn, LV_KB_STYLE_..., &style)`. 
The background and the buttons use the `style.body` properties. 
The labels use the `style.text` properties of the buttons' styles.

- **LV_KB_STYLE_BG** Background style. Uses all `style.body` properties including `padding` Default: `lv_style_pretty`
- **LV_KB_STYLE_BTN_REL** style of the released  buttons. Default: `lv_style_btn_rel`
- **LV_KB_STYLE_BTN_PR** style of the pressed buttons. Default: `lv_style_btn_pr`
- **LV_KB_STYLE_BTN_TGL_REL** style of the toggled released  buttons. Default: `lv_style_btn_tgl_rel`
- **LV_KB_STYLE_BTN_TGL_PR** style of the toggled pressed  buttons. Default: `lv_style_btn_tgl_pr`
- **LV_KB_STYLE_BTN_INA** style of the inactive  buttons. Default: `lv_style_btn_ina`

## Events
Besided the [Genreric events](/overview/events.html#generic-events) the following [Special events](/overview/events.html#special-events) are sent by the keyboards:
 - **LV_EVENT_VALUE_CHANGED** sent when the button is pressed/released or repeated after long press. The event data is set to ID of the pressed/released button.
 - **LV_EVENT_APPLY** the *Ok* button is clicked 
 - **LV_EVENT_CANCEL** the *Close* button is clicked
 
Learn more about [Events](/overview/events).

##Keys

The following *Keys* are processed by the Buttons:
- **LV_KEY_RIGHT/UP/LEFT/RIGHT** To navigate among the buttons and elect one
- **LV_KEY_ENTER** To press/release the selected button 

Learn more about [Keys](/overview/indev).

## Keys
No *Keys* are processed by the object type.

Learn more about [Keys](/overview/indev).


## Example
![Keyboard image](http://docs.littlevgl.com/img/keyboard-lv_kb.png)
```c
/*Create styles for the keyboard*/
static lv_style_t rel_style, pr_style;

lv_style_copy(&rel_style, &lv_style_btn_rel);
rel_style.body.radius = 0;

lv_style_copy(&pr_style, &lv_style_btn_pr);
pr_style.body.radius = 0;

/*Create a keyboard and apply the styles*/
lv_obj_t *kb = lv_kb_create(lv_scr_act(), NULL);
lv_kb_set_cursor_manage(kb, true);
lv_kb_set_style(kb, LV_KB_STYLE_BG, &lv_style_transp_tight);
lv_kb_set_style(kb, LV_KB_STYLE_BTN_REL, &rel_style);
lv_kb_set_style(kb, LV_KB_STYLE_BTN_PR, &pr_style);

/*Create a text area. The keyboard will write here*/
lv_obj_t *ta = lv_ta_create(lv_scr_act(), NULL);
lv_obj_align(ta, NULL, LV_ALIGN_IN_TOP_MID, 0, 10);
lv_ta_set_text(ta, "");

/*Assign the text area to the keyboard*/
lv_kb_set_ta(kb, ta);
```