.PHONY: data clean

data:
	bash scripts/download_data.sh

clean:
	rm -f data/*.csv
