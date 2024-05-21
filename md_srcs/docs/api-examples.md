---
outline: deep
---


# Runtime API Examples {#Runtime-API-Examples}

This page demonstrates usage of some of the runtime APIs provided by VitePress.

The main `useData()` API can be used to access site, theme, and page data for the current page. It works in both `.md` and `.vue` files:

```md
<script setup>
import { useData } from 'vitepress'

const { theme, page, frontmatter } = useData()
</script>

## Results

### Theme Data
<pre>{{ theme }}</pre>

### Page Data
<pre>{{ page }}</pre>

### Page Frontmatter
<pre>{{ frontmatter }}</pre>
```


&lt;script setup&gt; import { useData } from &#39;vitepress&#39;

const { site, theme, page, frontmatter } = useData() &lt;/script&gt;

## Results {#Results}

### Theme Data {#Theme-Data}

&lt;pre&gt;{{ theme }}&lt;/pre&gt;

### Page Data {#Page-Data}

&lt;pre&gt;{{ page }}&lt;/pre&gt;

### Page Frontmatter {#Page-Frontmatter}

&lt;pre&gt;{{ frontmatter }}&lt;/pre&gt;

## More {#More}

Check out the documentation for the [full list of runtime APIs](https://vitepress.dev/reference/runtime-api#usedata).

Obi-Wan Kenobi, we need your help!
