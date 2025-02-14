> **浏览**

| 键位    | 解释         | 模式   |
| ------- | ------------ | ------ |
| `<C-F>` | 向下移动整屏 | Normal |
| `<C-B>` | 向上移动整屏 | Normal |
| `<C-D>` | 向下移动半屏 | Normal |
| `<C-U>` | 向上移动半屏 | Normal |

> **编辑**

| 键位        | 解释             | 模式   |
| ----------- | ---------------- | ------ |
| `<C-a>`     | 数字自增(+1)     | Normal |
| `<C-x>`     | 数字自减(-1)     | Normal |
| `g + <C-a>` | 所在行递增       | Visual |
| `g + <C-x>` | 所在行递减       | Visual |
| `<C-a>`     | 向前移动一个字符 | Insert |
| `<C-f>`     | 向后移动一个字符 | Insert |

> **可视化**

| 键位  | 解释                   | 模式   |
| ----- | ---------------------- | ------ |
| `vip` | 可视化当前段落         | Visual |
| `viw` | 选中当前光标单词       | Visual |
| `vit` | 选中中间内容           | Visual |
| `vis` | 选中一个句子           | Visual |
| `va{` | 选中{}中间内容，包括{} | Visual |
| `vi<` | 选中<>中间内容         | Visual |
| `vi"` | 选中`"`中间内容        | Visual |

> **移动&跳转**

| 键位 | 解释                        | 模式   |
| ---- | --------------------------- | ------ |
| `e`  | 移动到字/词的尾部(包括标点) | Normal |
| `E`  | 移动到字/词的尾部(忽略标点) | Normal |
| `(`  | 移动到句首                  | Normal |
| `)`  | 移动到句尾                  | Normal |
| `{`  | 移动到段首                  | Normal |
| `}`  | 移动到下一段                | Normal |
| `[[` | 移动到章首                  | Normal |
| `]]` | 移动到章尾                  | Normal |

> 搜索

| 键位          | 解释                                   | 模式   |
| ------------- | -------------------------------------- | ------ |
| `/an [Enter]` | 精准搜索`an`,在词尾加个空格            | Search |
| `n`           | 跳到下一个匹配的搜索地方               | Search |
| `N`           | 跳到上一个匹配的搜索地方               | Search |
| `fa`          | 查找当前光标后的字符"a"                | Normal |
| `Fa`          | 查找当前光标前的字符"a"                | Normal |
| `ta`          | 同 fa,所别在于查找到时光标在"a"的前面  | Normal |
| `Tx`          | 同 Fa，区别在于查找到时光标在"a"的前面 | Normal |
| `;`           | 继续从光标为位置后搜索                 | Normal |
| `,`           | 继续从光标位置向前搜索                 | Normal |

> **格式化**

| 键位                                         | 解释        | 模式   |
| -------------------------------------------- | ----------- | ------ |
| `:EasyAlign *|`                              | 对齐所有`|` | Visual |
| `:EasyAlign *\` | 对齐所有`<Space>` | Visual |
