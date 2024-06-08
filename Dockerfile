# Use the official .NET SDK image to build the application
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build-env
WORKDIR /app

# Copy csproj and restore as distinct layers
COPY *.sln ./
COPY eMovieTicket/*.csproj ./eMovieTicket/
RUN dotnet restore

# Copy everything else and build
COPY . ./
WORKDIR /app/eMovieTicket
RUN dotnet publish -c Release -o out

# Use the official ASP.NET Core runtime image to run the application
FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
COPY --from=build-env /app/eMovieTicket/out .

# Expose the port on which the application will run
EXPOSE 80

# Start the application
ENTRYPOINT ["dotnet", "eMovieTicket.dll"]