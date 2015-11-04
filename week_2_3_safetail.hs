ls = [1..6]

safetail 
	= \ xs ->
		case xs of
			[] -> []
			(_:xs) -> xs