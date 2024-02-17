---
outline: deep
---


# Runtime API Examples {#14629315844127452958}
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

<script setup> import { useData } from 'vitepress'
const { site, theme, page, frontmatter } = useData() </script>

## Results {#304762286158531042}

### Theme Data {#4236093046460244322}
<pre>{{ theme }}</pre>

### Page Data {#9823775068168165902}
<pre>{{ page }}</pre>

### Page Frontmatter {#9597165691818531637}
<pre>{{ frontmatter }}</pre>

## More {#7318114126714381109}
Check out the documentation for the <a href="https://vitepress.dev/reference/runtime-api#usedata">full list of runtime APIs</a>.
