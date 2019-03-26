#class Diary
#  def initialize
#    @contents = "Eric Cantona is the best footballer"
#  end
#
#  def read
#    @contents
#  end
#end

#class SecretDiary
#  def initialize
#    @diary = Diary.new
#    @unlocked = false
#  end
#
#  def unlock
#    @unlocked = true
#  end
#
#  def lock
#    @unlocked = false
#  end
#
#  def read
#    return "Go away!" unless @unlocked
#    @diary.read
#  end
#end

# Draw a diagram of the above code. Think about the best way to denote this forwarding relationship.


                                  |-----------|
                                  |           |
                                  |SecretDiary|
                                  |           |
                                  |___________|
                                  |+diary     |
                                  |+unlocked  |
                                  |___________|
                                /       |       \
                              /         |         \
                            /           |           \
                          /             |             \
                        /               |               \
                      /                 |                 \
                    /                   |                   \
                  /                     |                     \
                /                       |                       \
              /                         |                         \
            /                           |                           \
          /                             |                             \
        /                               |                               \
|-----------|                     |-----------|                    |-----------|
|Unlock     |                     |Lock       |                    |Read       |
|___________|                     |___________|                    |___________|
                                                                  /
                                                                /
                                                              /
                                                            /
                                                          /
                                                        /
                                                      /
                                                    /
                                                  /
                                                /
                                              /
                                            /
                                          /
                                    |-----------|
                                    |           |
                                    |Diary      |
                                    |           |
                                    |___________|
                                    |+contents  |
                                    |___________|
                                          |
                                          |
                                          |
                                          |
                                          |
                                          |
                                    |-----------|
                                    |Read       |
                                    |___________|
