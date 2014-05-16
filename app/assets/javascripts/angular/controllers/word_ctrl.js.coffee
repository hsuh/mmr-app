@word.controller "wordController", ['$scope', '$resource', ($scope, $resource) ->
  Word = $resource("/word/:id", {id: '@id'})
  $scope.word = Word.query()
  console.log('scope here', $scope.word)
]
