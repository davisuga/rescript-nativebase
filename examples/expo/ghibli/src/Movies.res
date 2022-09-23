open RescriptNativeBase
open Utils

module Query = %relay(`
  query MoviesQuery {
	films {
		id 
		image
		title
		description
	}
  }
`)
open ReactNative.Style

module Movie = {
  @react.component
  let make = (~movie: MoviesQuery_graphql.Types.response_films) =>
    <Box borderRadius="10px" bg="muted.800">
      <ReactNative.Image
        style={ReactNative.Style.viewStyle(~borderRadius=10., ~height=dp(300.), ())}
        source={movie.image->Utils.Image.getSource}
      />
      <Box p="5">
        <Heading size=#md> {movie.title->os} </Heading>
        <Text> {movie.description->os} </Text>
      </Box>
    </Box>
}

let mapMoviesResponse = films => films->Array.optOptArrayToArray
@react.component
let make = () => {
  let moviesResponse = Query.use(~variables=())()

  let movies = mapMoviesResponse(moviesResponse.films)

  <Box bg="muted.900" pt="8" px="8" flex="1">
    <Heading size=#"2xl" color="white"> {"Ghibli films"->s} </Heading>
    <ReactNative.ScrollView>
      <VStack space=4> {Array.map(movie => <Movie movie />, movies)->React.array} </VStack>
    </ReactNative.ScrollView>
  </Box>
}
