def exec_time(proc)
  time_now = Time.now
  proc
  Time.now - time_now
end
