--[[
    name: _0rbit
    description: Package to build with 0rbit to Access ANY Real World Data in your AO process.
    dev: @0rbitco
]]

local _0rbit = {
    _version = "0.0.1",
    MAIN_PROCESS = "BaMK1dfayo75s3q1ow6AO64UDpD9SEFbeE8xYrY2fyQ",
    _0RBT_TOKEN = "BUhZLMwQ6yZHguLtJYA5lLUa9LQzLXMXRfaq9FVcPJc"
}

function _0rbit.sendGetRequest(url)
    local fee_amount = "1000000000000" -- 1 $0RBT

    Send({
        Target = _0rbit._0RBT_TOKEN,
        Action = "Transfer",
        Recipient = _0rbit.MAIN_PROCESS,
        Quantity = fee_amount,
        ["X-Action"] = "Get-Real-Data",
        ["X-Url"] = url
    })
end

function _0rbit.sendPostRequest(url, body)
    local fee_amount = "1000000000000" -- 1 $0RBT

    Send({
        Target = _0rbit._0RBT_TOKEN,
        Action = "Transfer",
        Recipient = _0rbit.MAIN_PROCESS,
        Quantity = fee_amount,
        ["X-Action"] = "Post-Real-Data",
        ["X-Url"] = url,
        ["X-Body"] = body
    })
end

function _0rbit.getBalance()
    Send({ Target = _0rbit._0RBT_TOKEN, Tags = { Action = "Balance" } })
end

return _0rbit
