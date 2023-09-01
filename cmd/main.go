package main

import (
	"fmt"
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	fmt.Println("Main start")

	router := gin.Default()

	router.GET("/hello/:name", func(ctx *gin.Context) {

		name := ctx.Param("name")
		ctx.String(http.StatusOK, fmt.Sprintf("hello  %v", name))
	})

	router.Run(":8080")

	fmt.Println("Main stop")
}
