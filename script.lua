require("needles")

function cipherSmall(str)
    local one, two = str[1], str[2]
    local oneI, twoI = alphabet[one], alphabet[two]

    local delta = oneI - twoI

    if delta == 0 then
        local char = charStr(1)
        return char
    elseif delta < 1 then
        local char = charStr(alphabetCount + delta)
        return char
    else
        local char = charStr(delta)
        return char
    end
end

function cipher(text)
    text = string.lower(text)

    local cip = ""
    local realLen = string.len(text)
    local len = math.floor(realLen / 2) * 2
    local sadly = realLen - len

    for i = 1, len, 2 do
        local str = string.sub(text, i, i + 1)

        cip = cip .. cipherSmall(str)
    end

    if sadly > 0 then
        local str = string.sub(text, realLen - 1, realLen)

        cip = cip .. cipherSmall(str)
    end

    print(cip)
    print("Original length: ", len)
    print("Cipher length: ", string.len(cip))
end

cipher([[Hello World]])

-- Hello Stages:
--
-- dq-"is|\q;s&>d? -- Stage 1
-- s$|ig8]f        -- Stage 2
-- -\)=            -- Stage 3
-- _p              -- Stage 4
-- !               -- Stage 5