
# Markdown Extension Examples {#17900333441233852940}
This page demonstrates some of the built-in markdown extensions provided by VitePress.

## Syntax Highlighting {#80891085126685201}
VitePress provides Syntax Highlighting powered by <a href="https://github.com/shikijs/shiki">Shiki</a>, with additional features like line-highlighting:
**Input**

````
```js{4}
export default {
  data () {
    return {
      msg: 'Highlighted!'
    }
  }
}
```
````

**Output**

```js{4}
export default {
  data () {
    return {
      msg: 'Highlighted!'
    }
  }
}
```


## Custom Containers {#11880595600109690555}
**Input**

```md
::: info

This is an info box!

:::

::: tip

This is a tip.

:::

::: warning

This is a warning.

:::

::: danger

This is a dangerous warning.

:::

::: details

This is a details block.

:::
```

**Output**
::: info
This is an info box.
:::
::: tip
This is a tip.
:::
::: warning
This is a warning.
:::
::: danger
This is a dangerous warning.
:::
::: details
This is a details block.
:::

## More {#7318114126714381109}
Check out the documentation for the <a href="https://vitepress.dev/guide/markdown">full list of markdown extensions</a>.
