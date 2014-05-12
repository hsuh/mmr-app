@word.controller "WordIndexController", ['$scope', '$resource', ($scope, $resource) ->
  Word = $resource("/words.json")
  $scope.words = Word.query()
  console.log('scope here', $scope.words)
]
