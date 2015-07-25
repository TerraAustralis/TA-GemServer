baselines
baselineGemServer: spec
	spec
		for: #gemstone
		do: [ 
			spec package: 'TA-GemServer'.
			spec package: 'TA-Tests-GemServer' with: #('TA-GemServer').
			spec
				group: 'GemServer Core' with: #('TA-GemServer');
				group: 'GemServer Tests' with: #('TA-Tests-GemServer') ].
	spec
		for: #common
		do: [ 
			spec
				group: 'default' with: #('development');
				group: 'development' with: #('GemServer Core' 'GemServer Tests');
				group: 'deploy' with: #('GemServer Core') ]