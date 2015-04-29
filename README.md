# quick-popup - A super-simple popup system

quick-popup is as simple and bare-bones as could possibly be made. Here's how
it works:

```html
<!-- Any element to click on to toggle the popup -->
<a id="my-popup-link">Show popup</a>

<!-- Any element to start hidden then pop up -->
<div id="my-popup-box" class="popup">
  <!-- Optional (but recommended) close button -->
  <span class="popup-close"></span>
  <!-- Your popup content goes here -->
</div>

<!-- Set up quick-popup -->
<script>$('#my-popup-link').popup('#my-popup-box')</script>
```

You can also use `data-popup-for="my-popup-name"` on the toggle element and
`data-popup-name="my-popup-name"` on the popup element, and quick-popup will
set it up automatically.


## CSS Classes

quick-popup is mostly powered by CSS. The `.popup` class should be added onto
the popup element to handle the basic popup behaviour. quick-popup toggles the
`.shown` class on the popup element to control display.

The `.popup-close` class can be added to any span element inside a `.popup`
element to create a close button. The `.popup-close` element is given a
`::before` pseudo-element which contains '&times;' (`&times;`).

You can also use `.popup.window` to make the popup grey out the document and
cover the most of the viewport.
