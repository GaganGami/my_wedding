class HomeController < ApplicationController
  def index
  	@groups = (1..42).to_a.shuffle.in_groups(4, false)
  	if Rails.env == 'development'
  		@memories = [["https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/024/medium/memory26.jpg?1524051714", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/031/medium/memory32.jpg?1524052218", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/026/medium/memory25.jpg?1524051767", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/010/medium/memory10.jpg?1523995955", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/018/medium/memory18.jpg?1523997707", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/038/medium/memory38.jpg?1524052660", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/013/medium/memory13.jpg?1523996115", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/023/medium/memory23.jpg?1524051613", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/003/medium/memory4.jpg?1523995310", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/005/medium/memory5.jpg?1523995395", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/007/medium/memory7.jpg?1523995740"], ["https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/016/medium/memory16.jpg?1523996458", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/002/medium/memory2.jpg?1523995181", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/030/medium/memory30.jpg?1524052067", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/025/medium/memory24.jpg?1524051729", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/041/medium/memory41.jpg?1524053041", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/032/medium/memory31.jpg?1524052256", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/037/medium/memory39.jpg?1524052609", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/020/medium/memory20.jpg?1523997828", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/027/medium/memory27.jpg?1524051869", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/009/medium/memory9.jpg?1523995891", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/033/medium/memory34.jpg?1524052289"], ["https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/011/medium/memory11.jpg?1523996042", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/022/medium/memory22.jpg?1524051547", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/012/medium/memory12.jpg?1523996068", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/035/medium/memory35.jpg?1524052335", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/008/medium/memory8.jpg?1523995817", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/001/medium/memory1.jpg?1523994999", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/006/medium/memory6.jpg?1523995692", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/039/medium/memory37.jpg?1524052689", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/042/medium/memory42.jpg?1524053048", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/021/medium/memory21.jpg?1524051452"], ["https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/040/medium/memory36.jpg?1524052697", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/036/medium/memory40.jpg?1524052601", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/029/medium/memory29.jpg?1524052005", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/028/medium/memory28.jpg?1524051954", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/004/medium/memory3.jpg?1523995316", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/034/medium/memory33.jpg?1524052322", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/015/medium/memory15.jpg?1523996279", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/019/medium/memory19.jpg?1523997723", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/014/medium/memory14.jpg?1523996198", "https://s3-ap-south-1.amazonaws.com/gagan-weds-amruta-dev/memory/000/000/017/medium/memory17.jpg?1523997065"]]
  	else
  		@memories = Memory.order('random()').in_groups(4,false)
  	end
  end
end
