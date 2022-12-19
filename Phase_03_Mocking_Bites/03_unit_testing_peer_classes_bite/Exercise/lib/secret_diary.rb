class SecretDiary
    def initialize(diary)
        @diary, @lock = diary, true
    end

    def read
        @lock == true ? "Go away!" : @diary
    end

    def lock
        @lock = true
    end

    def unlock
        @lock = false
    end
end