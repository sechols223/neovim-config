
local api = vim.api

local buffer
local window

function create_empty_buffer()

    return api.nvim_create_buf(false, true)

end

function get_option(option)
    return api.nvim_get_option(option)
end

function open_window()

    buffer = create_empty_buffer()

    local width = get_option("columns")
    local height = get_option("lines")

    local win_height = math.ceil(height * 0.8 - 4)
    local win_width = math.ceil(width * 0.8)

    local row = math.ceil((height - win_height) / 2 - 1)
    local col = math.ceil((width - win_width) / 2)

    local opts = {
        style = "minimal",
        relative = "editor",
        width = win_width,
        height = win_height,
        row = row,
        col = col
    }
    window = api.nvim_open_win(buffer, true, opts)
end
