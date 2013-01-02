<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<h3>Current Pets</h3>
<div class="module">
	<div id="currentPets">
		<div class="sub-module">
			<div class="row grid3col">
				<div class="column">
					<label for="currentPets[0].name">Name</label><input
						name="currentPets[0].name" type="text" class="">
				</div>
				<div class="column">
					<label for="currentPets[0].breed">Type/Breed</label><input
						name="currentPets[0].breed" type="text">
				</div>
				<div class="column">
					<label for="currentPets[0].age">Age</label><input
						name="currentPets[0].age" type="text" class="input2char">
				</div>
			</div>
			<div class="row grid2col">
				<div class="column">
					<label for="currentPets[0].isIndoor">Where does this pet
						primarily stay?</label>
					<div class="multi-option">
						<input name="currentPets[0].isIndoor" value="true" type="radio"
							class="short"> Indoor
					</div>
					<input name="currentPets[0].isIndoor" value="false" type="radio"
						class="short"> Outdoor
				</div>
				<div class="column">
					<label for="currentPets[0].isSterilized">Is this pet
						sterilized?</label>
					<div class="multi-option">
						<input name="currentPets[0].isSterilized" type="radio"
							value="true"> Yes
					</div>
					<input name="currentPets[0].isSterilized" type="radio"
						value="false"> No
				</div>
			</div>
			<div class="row grid2col">
				<div class="column">
					<label for="currentPets[0].hasVaccines">Is this pet current
						on its vaccines?</label>
					<div class="multi-option">
						<input name="currentPets[0].hasVaccines" type="radio"
							class="input2char"> Yes
					</div>
					<input name="currentPets[0].hasVaccines" type="radio"
						class="input2char"> No
				</div>
				<div class="column">
					<label for="currentPets[0].isHeartwormed">Is this pet on
						heartworm preventative?</label>
					<div class="multi-option">
						<input name="currentPets[0].isHeartwormed" type="radio"
							class="input2char"> Yes
					</div>
					<input name="currentPets[0].isHeartwormed" type="radio"
						class="input2char"> No
				</div>
			</div>
		</div>
		<hr>
		<div class="sub-module">
			<div class="row grid3col">
				<div class="column">
					<label for="currentPets[1].name">Name</label><input
						name="currentPets[1].name" type="text" class="">
				</div>
				<div class="column">
					<label for="currentPets[1].breed">Type/Breed</label><input
						name="currentPets[1].breed" type="text">
				</div>
				<div class="column">
					<label for="currentPets[1].age">Age</label><input
						name="currentPets[1].age" type="text" class="input2char">
				</div>
			</div>
			<div class="row grid2col">
				<div class="column">
					<label for="currentPets[1].isIndoor">Where does this pet
						primarily stay?</label>
					<div class="multi-option">
						<input name="currentPets[1].isIndoor" value="true" type="radio"
							class="short"> Indoor
					</div>
					<input name="currentPets[1].isIndoor" value="false" type="radio"
						class="short"> Outdoor
				</div>
				<div class="column">
					<label for="currentPets[1].isSterilized">Is this pet
						sterilized?</label>
					<div class="multi-option">
						<input name="currentPets[1].isSterilized" type="radio"
							value="true"> Yes
					</div>
					<input name="currentPets[1].isSterilized" type="radio"
						value="false"> No
				</div>
			</div>
			<div class="row grid2col">
				<div class="column">
					<label for="currentPets[1].hasVaccines">Is this pet current
						on its vaccines?</label>
					<div class="multi-option">
						<input name="currentPets[1].hasVaccines" type="radio"
							class="input2char"> Yes
					</div>
					<input name="currentPets[1].hasVaccines" type="radio"
						class="input2char"> No
				</div>
				<div class="column">
					<label for="currentPets[1].isHeartwormed">Is this pet on
						heartworm preventative?</label>
					<div class="multi-option">
						<input name="currentPets[1].isHeartwormed" type="radio"
							class="input2char"> Yes
					</div>
					<input name="currentPets[1].isHeartwormed" type="radio"
						class="input2char"> No
				</div>
			</div>
		</div>
		<hr>
		<div class="sub-module">
			<div class="row grid3col">
				<div class="column">
					<label for="currentPets[2].name">Name</label><input
						name="currentPets[2].name" type="text" class="">
				</div>
				<div class="column">
					<label for="currentPets[2].breed">Type/Breed</label><input
						name="currentPets[2].breed" type="text">
				</div>
				<div class="column">
					<label for="currentPets[2].age">Age</label><input
						name="currentPets[2].age" type="text" class="input2char">
				</div>
			</div>
			<div class="row grid2col">
				<div class="column">
					<label for="currentPets[2].isIndoor">Where does this pet
						primarily stay?</label>
					<div class="multi-option">
						<input name="currentPets[2].isIndoor" value="true" type="radio"
							class="short"> Indoor
					</div>
					<input name="currentPets[2].isIndoor" value="false" type="radio"
						class="short"> Outdoor
				</div>
				<div class="column">
					<label for="currentPets[2].isSterilized">Is this pet
						sterilized?</label>
					<div class="multi-option">
						<input name="currentPets[2].isSterilized" type="radio"
							value="true"> Yes
					</div>
					<input name="currentPets[2].isSterilized" type="radio"
						value="false"> No
				</div>
			</div>
			<div class="row grid2col">
				<div class="column">
					<label for="currentPets[2].hasVaccines">Is this pet current
						on its vaccines?</label>
					<div class="multi-option">
						<input name="currentPets[2].hasVaccines" type="radio"
							class="input2char"> Yes
					</div>
					<input name="currentPets[2].hasVaccines" type="radio"
						class="input2char"> No
				</div>
				<div class="column">
					<label for="currentPets[2].isHeartwormed">Is this pet on
						heartworm preventative?</label>
					<div class="multi-option">
						<input name="currentPets[2].isHeartwormed" type="radio"
							class="input2char"> Yes
					</div>
					<input name="currentPets[2].isHeartwormed" type="radio"
						class="input2char"> No
				</div>
			</div>
		</div>
		<hr>
		<div class="sub-module">
			<div class="row grid3col">
				<div class="column">
					<label for="currentPets[3].name">Name</label><input
						name="currentPets[3].name" type="text" class="">
				</div>
				<div class="column">
					<label for="currentPets[3].breed">Type/Breed</label><input
						name="currentPets[3].breed" type="text">
				</div>
				<div class="column">
					<label for="currentPets[3].age">Age</label><input
						name="currentPets[3].age" type="text" class="input2char">
				</div>
			</div>
			<div class="row grid2col">
				<div class="column">
					<label for="currentPets[3].isIndoor">Where does this pet
						primarily stay?</label>
					<div class="multi-option">
						<input name="currentPets[3].isIndoor" value="true" type="radio"
							class="short"> Indoor
					</div>
					<input name="currentPets[3].isIndoor" value="false" type="radio"
						class="short"> Outdoor
				</div>
				<div class="column">
					<label for="currentPets[3].isSterilized">Is this pet
						sterilized?</label>
					<div class="multi-option">
						<input name="currentPets[3].isSterilized" type="radio"
							value="true"> Yes
					</div>
					<input name="currentPets[3].isSterilized" type="radio"
						value="false"> No
				</div>
			</div>
			<div class="row grid2col">
				<div class="column">
					<label for="currentPets[3].hasVaccines">Is this pet current
						on its vaccines?</label>
					<div class="multi-option">
						<input name="currentPets[3].hasVaccines" type="radio"
							class="input2char"> Yes
					</div>
					<input name="currentPets[3].hasVaccines" type="radio"
						class="input2char"> No
				</div>
				<div class="column">
					<label for="currentPets[3].isHeartwormed">Is this pet on
						heartworm preventative?</label>
					<div class="multi-option">
						<input name="currentPets[3].isHeartwormed" type="radio"
							class="input2char"> Yes
					</div>
					<input name="currentPets[3].isHeartwormed" type="radio"
						class="input2char"> No
				</div>
			</div>
		</div>
		<hr>
		<div class="sub-module">
			<div class="row grid3col">
				<div class="column">
					<label for="currentPets[4].name">Name</label><input
						name="currentPets[4].name" type="text" class="">
				</div>
				<div class="column">
					<label for="currentPets[4].breed">Type/Breed</label><input
						name="currentPets[4].breed" type="text">
				</div>
				<div class="column">
					<label for="currentPets[4].age">Age</label><input
						name="currentPets[4].age" type="text" class="input2char">
				</div>
			</div>
			<div class="row grid2col">
				<div class="column">
					<label for="currentPets[4].isIndoor">Where does this pet
						primarily stay?</label>
					<div class="multi-option">
						<input name="currentPets[4].isIndoor" value="true" type="radio"
							class="short"> Indoor
					</div>
					<input name="currentPets[4].isIndoor" value="false" type="radio"
						class="short"> Outdoor
				</div>
				<div class="column">
					<label for="currentPets[4].isSterilized">Is this pet
						sterilized?</label>
					<div class="multi-option">
						<input name="currentPets[4].isSterilized" type="radio"
							value="true"> Yes
					</div>
					<input name="currentPets[4].isSterilized" type="radio"
						value="false"> No
				</div>
			</div>
			<div class="row grid2col">
				<div class="column">
					<label for="currentPets[4].hasVaccines">Is this pet current
						on its vaccines?</label>
					<div class="multi-option">
						<input name="currentPets[4].hasVaccines" type="radio"
							class="input2char"> Yes
					</div>
					<input name="currentPets[4].hasVaccines" type="radio"
						class="input2char"> No
				</div>
				<div class="column">
					<label for="currentPets[4].isHeartwormed">Is this pet on
						heartworm preventative?</label>
					<div class="multi-option">
						<input name="currentPets[4].isHeartwormed" type="radio"
							class="input2char"> Yes
					</div>
					<input name="currentPets[4].isHeartwormed" type="radio"
						class="input2char"> No
				</div>
			</div>
		</div>
		<hr>
		<div class="sub-module">
			<div class="row grid3col">
				<div class="column">
					<label for="currentPets[5].name">Name</label><input
						name="currentPets[5].name" type="text" class="">
				</div>
				<div class="column">
					<label for="currentPets[5].breed">Type/Breed</label><input
						name="currentPets[5].breed" type="text">
				</div>
				<div class="column">
					<label for="currentPets[5].age">Age</label><input
						name="currentPets[5].age" type="text" class="input2char">
				</div>
			</div>
			<div class="row grid2col">
				<div class="column">
					<label for="currentPets[5].isIndoor">Where does this pet
						primarily stay?</label>
					<div class="multi-option">
						<input name="currentPets[5].isIndoor" value="true" type="radio"
							class="short"> Indoor
					</div>
					<input name="currentPets[5].isIndoor" value="false" type="radio"
						class="short"> Outdoor
				</div>
				<div class="column">
					<label for="currentPets[5].isSterilized">Is this pet
						sterilized?</label>
					<div class="multi-option">
						<input name="currentPets[5].isSterilized" type="radio"
							value="true"> Yes
					</div>
					<input name="currentPets[5].isSterilized" type="radio"
						value="false"> No
				</div>
			</div>
			<div class="row grid2col">
				<div class="column">
					<label for="currentPets[5].hasVaccines">Is this pet current
						on its vaccines?</label>
					<div class="multi-option">
						<input name="currentPets[5].hasVaccines" type="radio"
							class="input2char"> Yes
					</div>
					<input name="currentPets[5].hasVaccines" type="radio"
						class="input2char"> No
				</div>
				<div class="column">
					<label for="currentPets[5].isHeartwormed">Is this pet on
						heartworm preventative?</label>
					<div class="multi-option">
						<input name="currentPets[5].isHeartwormed" type="radio"
							class="input2char"> Yes
					</div>
					<input name="currentPets[5].isHeartwormed" type="radio"
						class="input2char"> No
				</div>
			</div>
		</div>
		<hr>
		<div class="sub-module">
			<div class="row grid3col">
				<div class="column">
					<label for="currentPets[6].name">Name</label><input
						name="currentPets[6].name" type="text" class="">
				</div>
				<div class="column">
					<label for="currentPets[6].breed">Type/Breed</label><input
						name="currentPets[6].breed" type="text">
				</div>
				<div class="column">
					<label for="currentPets[6].age">Age</label><input
						name="currentPets[6].age" type="text" class="input2char">
				</div>
			</div>
			<div class="row grid2col">
				<div class="column">
					<label for="currentPets[6].isIndoor">Where does this pet
						primarily stay?</label>
					<div class="multi-option">
						<input name="currentPets[6].isIndoor" value="true" type="radio"
							class="short"> Indoor
					</div>
					<input name="currentPets[6].isIndoor" value="false" type="radio"
						class="short"> Outdoor
				</div>
				<div class="column">
					<label for="currentPets[6].isSterilized">Is this pet
						sterilized?</label>
					<div class="multi-option">
						<input name="currentPets[6].isSterilized" type="radio"
							value="true"> Yes
					</div>
					<input name="currentPets[6].isSterilized" type="radio"
						value="false"> No
				</div>
			</div>
			<div class="row grid2col">
				<div class="column">
					<label for="currentPets[6].hasVaccines">Is this pet current
						on its vaccines?</label>
					<div class="multi-option">
						<input name="currentPets[6].hasVaccines" type="radio"
							class="input2char"> Yes
					</div>
					<input name="currentPets[6].hasVaccines" type="radio"
						class="input2char"> No
				</div>
				<div class="column">
					<label for="currentPets[6].isHeartwormed">Is this pet on
						heartworm preventative?</label>
					<div class="multi-option">
						<input name="currentPets[6].isHeartwormed" type="radio"
							class="input2char"> Yes
					</div>
					<input name="currentPets[6].isHeartwormed" type="radio"
						class="input2char"> No
				</div>
			</div>
		</div>
		<hr>
		<div class="sub-module">
			<div class="row grid3col">
				<div class="column">
					<label for="currentPets[7].name">Name</label><input
						name="currentPets[7].name" type="text" class="">
				</div>
				<div class="column">
					<label for="currentPets[7].breed">Type/Breed</label><input
						name="currentPets[7].breed" type="text">
				</div>
				<div class="column">
					<label for="currentPets[7].age">Age</label><input
						name="currentPets[7].age" type="text" class="input2char">
				</div>
			</div>
			<div class="row grid2col">
				<div class="column">
					<label for="currentPets[7].isIndoor">Where does this pet
						primarily stay?</label>
					<div class="multi-option">
						<input name="currentPets[7].isIndoor" value="true" type="radio"
							class="short"> Indoor
					</div>
					<input name="currentPets[7].isIndoor" value="false" type="radio"
						class="short"> Outdoor
				</div>
				<div class="column">
					<label for="currentPets[7].isSterilized">Is this pet
						sterilized?</label>
					<div class="multi-option">
						<input name="currentPets[7].isSterilized" type="radio"
							value="true"> Yes
					</div>
					<input name="currentPets[7].isSterilized" type="radio"
						value="false"> No
				</div>
			</div>
			<div class="row grid2col">
				<div class="column">
					<label for="currentPets[7].hasVaccines">Is this pet current
						on its vaccines?</label>
					<div class="multi-option">
						<input name="currentPets[7].hasVaccines" type="radio"
							class="input2char"> Yes
					</div>
					<input name="currentPets[7].hasVaccines" type="radio"
						class="input2char"> No
				</div>
				<div class="column">
					<label for="currentPets[7].isHeartwormed">Is this pet on
						heartworm preventative?</label>
					<div class="multi-option">
						<input name="currentPets[7].isHeartwormed" type="radio"
							class="input2char"> Yes
					</div>
					<input name="currentPets[7].isHeartwormed" type="radio"
						class="input2char"> No
				</div>
			</div>
		</div>
		<hr>
		<div class="sub-module">
			<div class="row grid3col">
				<div class="column">
					<label for="currentPets[8].name">Name</label><input
						name="currentPets[8].name" type="text" class="">
				</div>
				<div class="column">
					<label for="currentPets[8].breed">Type/Breed</label><input
						name="currentPets[8].breed" type="text">
				</div>
				<div class="column">
					<label for="currentPets[8].age">Age</label><input
						name="currentPets[8].age" type="text" class="input2char">
				</div>
			</div>
			<div class="row grid2col">
				<div class="column">
					<label for="currentPets[8].isIndoor">Where does this pet
						primarily stay?</label>
					<div class="multi-option">
						<input name="currentPets[8].isIndoor" value="true" type="radio"
							class="short"> Indoor
					</div>
					<input name="currentPets[8].isIndoor" value="false" type="radio"
						class="short"> Outdoor
				</div>
				<div class="column">
					<label for="currentPets[8].isSterilized">Is this pet
						sterilized?</label>
					<div class="multi-option">
						<input name="currentPets[8].isSterilized" type="radio"
							value="true"> Yes
					</div>
					<input name="currentPets[8].isSterilized" type="radio"
						value="false"> No
				</div>
			</div>
			<div class="row grid2col">
				<div class="column">
					<label for="currentPets[8].hasVaccines">Is this pet current
						on its vaccines?</label>
					<div class="multi-option">
						<input name="currentPets[8].hasVaccines" type="radio"
							class="input2char"> Yes
					</div>
					<input name="currentPets[8].hasVaccines" type="radio"
						class="input2char"> No
				</div>
				<div class="column">
					<label for="currentPets[8].isHeartwormed">Is this pet on
						heartworm preventative?</label>
					<div class="multi-option">
						<input name="currentPets[8].isHeartwormed" type="radio"
							class="input2char"> Yes
					</div>
					<input name="currentPets[8].isHeartwormed" type="radio"
						class="input2char"> No
				</div>
			</div>
		</div>
		<hr>
		<div class="sub-module">
			<div class="row grid3col">
				<div class="column">
					<label for="currentPets[9].name">Name</label><input
						name="currentPets[9].name" type="text" class="">
				</div>
				<div class="column">
					<label for="currentPets[9].breed">Type/Breed</label><input
						name="currentPets[9].breed" type="text">
				</div>
				<div class="column">
					<label for="currentPets[9].age">Age</label><input
						name="currentPets[9].age" type="text" class="input2char">
				</div>
			</div>
			<div class="row grid2col">
				<div class="column">
					<label for="currentPets[9].isIndoor">Where does this pet
						primarily stay?</label>
					<div class="multi-option">
						<input name="currentPets[9].isIndoor" value="true" type="radio"
							class="short"> Indoor
					</div>
					<input name="currentPets[9].isIndoor" value="false" type="radio"
						class="short"> Outdoor
				</div>
				<div class="column">
					<label for="currentPets[9].isSterilized">Is this pet
						sterilized?</label>
					<div class="multi-option">
						<input name="currentPets[9].isSterilized" type="radio"
							value="true"> Yes
					</div>
					<input name="currentPets[9].isSterilized" type="radio"
						value="false"> No
				</div>
			</div>
			<div class="row grid2col">
				<div class="column">
					<label for="currentPets[9].hasVaccines">Is this pet current
						on its vaccines?</label>
					<div class="multi-option">
						<input name="currentPets[9].hasVaccines" type="radio"
							class="input2char"> Yes
					</div>
					<input name="currentPets[9].hasVaccines" type="radio"
						class="input2char"> No
				</div>
				<div class="column">
					<label for="currentPets[9].isHeartwormed">Is this pet on
						heartworm preventative?</label>
					<div class="multi-option">
						<input name="currentPets[9].isHeartwormed" type="radio"
							class="input2char"> Yes
					</div>
					<input name="currentPets[9].isHeartwormed" type="radio"
						class="input2char"> No
				</div>
			</div>
		</div>
	</div>
</div>
