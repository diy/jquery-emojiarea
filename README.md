# jQuery EmojiArea

A drop-in plugin for turning regular textareas into ones that support emojis, WYSIWYG style! Set up a list of available emojis, call `$('textarea').emojiarea()` and you're done... basically. There's a plain-text fallback, so if the browser doesn't support [contentEditable](http://caniuse.com/#search=contenteditable), it will degrade gracefully—the user will still be able to use the dropdown menu of emojis.

![Screenshot](http://i.imgur.com/C4Z8F.gif)

```html
<textarea>Get off my lawn :angry:</textarea>
<script type="text/javascript">$('textarea').emojiarea();</script>
```

### Configuring the Dropdown Menu

![Dropdown Screenshot](http://i.imgur.com/8KPAu.png)

By default, the plugin will insert a link after the editor that toggles the emoji selector when clicked.

```html
<a href="javascript:void(0)" class="emoji-button">Emojis</a>
```

If you wish change this behavior and have the button placed before the editor, or change the label of the link, use:

```javascript
$('textarea').emojiarea({
    buttonLabel: 'Add Emoji',
    buttonPosition: 'before'
});
```

Alternatively, if you wish to use your own button:

```javascript
$('textarea').emojiarea({button: '#your-button'});
```

For skinning information, see the [CSS / Skinning](#css--skinning) section.

### Declaring Available Emojis

```javascript
$.emojiarea.path = '/path/to/folder/with/icons';
$.emojiarea.icons = {
    ':smile:'     : 'smile.png',
    ':angry:'     : 'angry.png',
    ':flushed:'   : 'flushed.png',
    ':neckbeard:' : 'neckbeard.png',
    ':laughing:'  : 'laughing.png'
};
```

### Setting Defaults

If you wish to set the defaults for `$().emojiarea()`, extend `$.emojiarea.defaults` like so:

```javascript
$.extend($.emojiarea.defaults, {
    buttonPosition: 'before'
});
```

For a basic set of emojis, see "packs/basic". If you have a really rad set and would like to share, please fork this and submit a pull request!

### CSS / Skinning

See [jquery.emojiarea.css](https://github.com/diy/jquery-emojiarea/blob/master/jquery.emojiarea.css) for the few fundamental CSS styles needed for this to work.

Basically, you'll want to adjust the following styles:

```css
.emoji-wysiwyg-editor /* the editor box itself */
.emoji-menu > div /* the dropdown menu with options */
.emoji-wysiwyg-editor img /* the emoji images in the editor */
```

## License

Copyright &copy; 2012 DIY Co

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at: http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

---------

### Footnotes

Huge props to [Tim Down](http://stackoverflow.com/users/96100/tim-down), a beast at cross-browser selection handling.

For a giant list of emojis (used by Github, Basecamp, et al), see ["Emoji cheat sheet"](http://www.emoji-cheat-sheet.com/).