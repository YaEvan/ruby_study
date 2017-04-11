def copy(form, to)
  src = File.open(from)
  begin
    dst = File.open(to,"w")
    data = src.read
    dst.close
  ensure
    src.close
  end
end
