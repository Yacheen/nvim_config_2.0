return {
    "kylechui/nvim-surround",
    event = { "BufReadPre", "BufNewFile" },
    version = "*", -- Use for stability; omit to use 'main' branch for the latest features
    config = true,
    -- motions for how to use surround
    -- surround with something: ysiw + what u want (Yank Surrounding In Word "")
    -- delete surrounding, ds + what u wanna delete(Delete Surrounding "")
    -- replace surrounding, cs(type) + what to replace with (Change Surrounding "" '')
    -- delete surrounding tags: dst (Delete Surrounding Tag)
    -- surround with tag around length: ys8jt(tag-name) (Yank Surrounding 8 Down Tag <div>)
    -- change surrounding tag cst(tag name) (Change Surrounding Tag <article>)
}
